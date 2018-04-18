package com.example.armtravel.controller;

import com.example.armtravel.model.*;
import com.example.armtravel.repository.*;
import com.example.armtravel.security.CurrentUser;
import com.example.armtravel.util.EmailServiceImpl;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Locale;
import java.util.UUID;



@Controller
public class MainController {

    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private EmailServiceImpl emailService;

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RegionRepository regionRepository;
    @Autowired
    private CityRepository cityRepository;
    @Autowired
    private HotelRepository hotelRepository;
    @Autowired
    private FoodRepository foodRepository;
    @Autowired
    private RegionPostRepository regionPostRepository;
    @Autowired
    private CityPostRepository cityPostRepository;
    @Autowired
    private RegionPostCommentRepository regionPostCommentRepository;
    @Autowired
    private File getFilePath;
    @Value("${armtravel.product.upload.path}")
    private String imageUploadPath;


    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String mainPage(ModelMap map, @AuthenticationPrincipal UserDetails userDetails, Locale locale) {
        map.addAttribute("allRegions", regionRepository.findAll());
        map.addAttribute("allCities", cityRepository.findAll());
        map.addAttribute("allHotels",hotelRepository.findAll());
        map.addAttribute("allFoods",foodRepository.findAll());
        map.addAttribute("allRegionPosts", regionPostRepository.findAll());
        map.addAttribute("allCityPosts",cityPostRepository.findAll());
        map.addAttribute("regionPostComments", regionPostCommentRepository.findAll());
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }
        return "index";
    }
    @GetMapping(value = "/")
    public String redirectHomePage() {
        return "redirect:/home";
    }

    @RequestMapping(value = "/loginSuccess", method = RequestMethod.GET)
    public String loginSuccess() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() != null && authentication.getPrincipal() instanceof CurrentUser) {
            CurrentUser principal = (CurrentUser) authentication.getPrincipal();
            if (principal.getUser().getType() == UserType.ADMIN) {
                return "redirect:/admin";
            }
            if (principal.getUser().getType() == UserType.USER) {
                return "redirect:/userPage";
            }
            return "redirect:/";
        }

        return "index";
    }
    @RequestMapping(value = "/loginPage", method = RequestMethod.GET)
    public String login(ModelMap map, @RequestParam(value = "message", required = false) String message) {
        map.addAttribute("user", new User());
        if (message != null) {
            map.addAttribute("message", message);
        }
        return "login-register";
    }
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@Valid @ModelAttribute("user") User user, BindingResult result) {
        if (userRepository.findOneByEmail(user.getEmail()) != null) {
            return "redirect:/loginPage?message=User by Email is exist";
        }
        StringBuilder sb = new StringBuilder();
        if (result.hasErrors()) {
            for (ObjectError objectError : result.getAllErrors()) {
                sb.append(objectError.getDefaultMessage() + "<br>");
            }
            return "redirect:/loginPage?message=" + sb.toString();
        }
        if (userRepository.findOneByEmail(user.getEmail()) == null) {
            if (user.getPassword().length() <= 6) {
                return "redirect:/loginPage?message=password must be 6 symbols";
            }
        }
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setType(UserType.USER);
        user.setVerify(false);
        user.setToken(UUID.randomUUID().toString());
        userRepository.save(user);
        String url = String.format("http://localhost:8080/verify?token=%s&email=%s", user.getToken(), user.getEmail());
        String text = String.format("Dear %s Thank you, you have successfully registered to our ArmTravel, Please visit by link in order to activate your profile. %s", user.getName(), url);
        emailService.sendSimpleMessage(user.getEmail(), "Welcome", text);
        return "redirect:/loginPage";
    }
    @RequestMapping(value = "/verify", method = RequestMethod.GET)
    public String verify(@RequestParam("token") String token, @RequestParam("email") String email) {
        User oneByEmail = userRepository.findOneByEmail(email);
        if (oneByEmail != null) {
            if (oneByEmail.getToken() != null && oneByEmail.getToken().equals(token)) {
                oneByEmail.setToken(null);
                oneByEmail.setVerify(true);
                userRepository.save(oneByEmail);
            }
        }
        return "redirect:/";
    }
    @GetMapping("/404")
    public String Page404() {
        return "404";
    }

    @RequestMapping(value = "/verifyError", method = RequestMethod.GET)
    public String verifyError() {
        return "verifyError";
    }
    @RequestMapping(value = "/image", method = RequestMethod.GET)
    public void getImageAsByteArray(HttpServletResponse response, @RequestParam("fileName") String fileName) throws IOException {
        InputStream in = new FileInputStream(imageUploadPath + fileName);
        response.setContentType(MediaType.ALL_VALUE);
        IOUtils.copy(in, response.getOutputStream());
    }

    @GetMapping("/rSinglePage")
    public String rSinglePage(@RequestParam("rId") int id, ModelMap map) {
        Region region = regionRepository.findOne(id);
        map.addAttribute("region", region);
        return "rSPage";
    }
    @GetMapping("/cSinglePage")
    public String cSinglePage(@RequestParam("cId") int id, ModelMap map) {
        City city = cityRepository.findOne(id);
        map.addAttribute("city", city);
        map.addAttribute("allCities",cityRepository.findAll());
        map.addAttribute("allRegions",regionRepository.findAll());
        return "cSPage";
    }

    @GetMapping("/allrpage")
    public String allrpage(ModelMap map) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() != null && authentication.getPrincipal() instanceof CurrentUser) {
            CurrentUser principal = (CurrentUser) authentication.getPrincipal();
            map.addAttribute("currentUser", principal.getUser());
        }
        map.addAttribute("allregions", regionRepository.findAll());
        map.addAttribute("allCities",cityRepository.findAll());
        return "allRegions";
    }
    @GetMapping("/allCityPage")
    public String allcpage(ModelMap map) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() != null && authentication.getPrincipal() instanceof CurrentUser) {
            CurrentUser principal = (CurrentUser) authentication.getPrincipal();
            map.addAttribute("currentUser", principal.getUser());
        }
        map.addAttribute("allCities", cityRepository.findAll());
        return "allCities";
    }
    @GetMapping("/rPSinglePage")
    public String rPSinglePage(@RequestParam("rPostId") int id, ModelMap map) {
        RegionPost regionPost = regionPostRepository.findOne(id);
        map.addAttribute("regionPost", regionPost);
        map.addAttribute("regionPostComment", new RegionPostComment());
        return "rPostSingle";
    }

    @GetMapping("/allrPpage")
    public String allrPpage(ModelMap map) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() != null && authentication.getPrincipal() instanceof CurrentUser) {
            CurrentUser principal = (CurrentUser) authentication.getPrincipal();
            map.addAttribute("currentUser", principal.getUser());
        }

        map.addAttribute("allregionPosts", regionPostRepository.findAll());
        map.addAttribute("allcityPosts",cityPostRepository.findAll());
        return "allRegionPosts";
    }
    @GetMapping("/cPSinglePage")
    public String cPSinglePage(@RequestParam("cPostId") int id, ModelMap map) {
        CityPost cityPost = cityPostRepository.findOne(id);
        map.addAttribute("cityPost", cityPost);
        map.addAttribute("cityPostComment", new CityPostComment());
        return "cityPostSingle";
    }

    @GetMapping("/fSinglePage")
    public String fSinglePage(@RequestParam("foodId") int id, ModelMap map) {
        Food food = foodRepository.findOne(id);
        map.addAttribute("food", food);
        return "hotelSinglePage";
    }
    @GetMapping("/allFoodPage")
    public String allFpage(ModelMap map) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() != null && authentication.getPrincipal() instanceof CurrentUser) {
            CurrentUser principal = (CurrentUser) authentication.getPrincipal();
            map.addAttribute("currentUser", principal.getUser());
        }

        map.addAttribute("allFoods", foodRepository.findAll());
        return "allFoods";
    }
    @GetMapping("/hSinglePage")
    public String hSinglePage(@RequestParam("hotelId") int id, ModelMap map) {
        Hotel hotel= hotelRepository.findOne(id);
        map.addAttribute("hotel", hotel);
        return "hotelSinglePage";
    }
    @GetMapping("/allHotelPage")
    public String allHpage(ModelMap map) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() != null && authentication.getPrincipal() instanceof CurrentUser) {
            CurrentUser principal = (CurrentUser) authentication.getPrincipal();
            map.addAttribute("currentUser", principal.getUser());
        }

        map.addAttribute("allHotels", hotelRepository.findAll());
        return "allHotels";
    }
    @GetMapping("/deleteR")
    public String deleteRegion(@RequestParam("regionId") int id) {
        regionRepository.delete(id);
        return "redirect:/allrpage";
    }
    @GetMapping("/deleteC")
    public String deleteCity(@RequestParam("cityId") int id) {
        cityRepository.delete(id);
        return "redirect:/allCityPage";
    }
    @GetMapping("/deleteH")
    public String deleteHotel(@RequestParam("hotelId") int id) {
        hotelRepository.delete(id);
        return "redirect:/allHotelPage";
    }
    @GetMapping("/search")
    public String search(ModelMap map, @RequestParam("searchResult") String name, @AuthenticationPrincipal UserDetails userDetails) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() != null && authentication.getPrincipal() instanceof CurrentUser) {
            CurrentUser principal = (CurrentUser) authentication.getPrincipal();
            map.addAttribute("currentUser", principal.getUser());
        }
        List<City> citiesByNameContains = cityRepository.findCitiesByNameContains(name);
        List<Region> regionByNameContains = regionRepository.findRegionByNameContains(name);
        List<Hotel> hotelsByNameContains = hotelRepository.findHotelsByNameContains(name);
        if (citiesByNameContains != null && regionByNameContains != null && hotelsByNameContains != null) {
            if (citiesByNameContains.size() > 0) {
                map.addAttribute("citiesByNameContains", citiesByNameContains);
            }
            if (regionByNameContains.size() > 0) {
                map.addAttribute("regionByNameContains", regionByNameContains);
            }
            if (hotelsByNameContains.size() > 0) {
                map.addAttribute("hotelsByNameContains", hotelsByNameContains);
            }
        } else {
            String s = "NO Results For - " + name;
            map.addAttribute("message", s);
        }
        map.addAttribute("name", name);
        return "searchResults";
    }
}








