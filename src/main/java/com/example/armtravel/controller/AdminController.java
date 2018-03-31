package com.example.armtravel.controller;


import com.example.armtravel.model.*;
import com.example.armtravel.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.List;


@Controller
public class AdminController {

    @Autowired
    private File getFilePath;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RegionRepository regionRepository;
    @Autowired
    private CityRepository cityRepository;
    @Autowired
    private HotelRepository hotelRepository;
    @Autowired
    private RegionPostRepository regionPostRepository;
    @Autowired
    private CityPostRepository cityPostRepository;

    @Autowired
    private PictureRepository pictureRepository;


    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(ModelMap map) {
        map.addAttribute("region", new Region());
        map.addAttribute("city", new City());
        map.addAttribute("hotel", new Hotel());
        return "admin";
    }

    @PostMapping(value = "/addRegion")
    public String addRegion(@Valid @ModelAttribute("region") Region region, @RequestParam("picture") MultipartFile[] multipartFile) throws IOException {
        for (MultipartFile file : multipartFile) {
            String picName = System.currentTimeMillis() + "_" + file.getOriginalFilename();
            File file1 = new File(getFilePath + "\\" + picName);
            file.transferTo(file1);
            Picture picture = new Picture();
            picture.setPicUrl(picName);
            pictureRepository.save(picture);
            region.getPictures().add(picture);
        }
        regionRepository.save(region);
        return "redirect:/allRegions";
    }


    @PostMapping(value = "/addCity")
    public String addCity(@Valid @ModelAttribute("city") City city, @RequestParam("picture") MultipartFile[] multipartFile) throws IOException {
        for (MultipartFile file : multipartFile) {
            String picName = System.currentTimeMillis() + "_" + file.getOriginalFilename();
            File file1 = new File(getFilePath + "\\" + picName);
            file.transferTo(file1);
            Picture picture = new Picture();
            picture.setPicUrl(picName);
            pictureRepository.save(picture);
            city.getPictures().add(picture);
        }
        cityRepository.save(city);
        return "redirect:/allCities";
    }

    @PostMapping(value = "/addHotel")
    public String addHotel(@Valid @ModelAttribute("hotel") Hotel hotel, @RequestParam("hotelRating") int rating, @RequestParam("picture") MultipartFile[] multipartFile) throws IOException {
        for (MultipartFile file : multipartFile) {
            String picName = System.currentTimeMillis() + "_" + file.getOriginalFilename();
            File file1 = new File(getFilePath + "\\" + picName);
            file.transferTo(file1);
            Picture picture = new Picture();
            picture.setPicUrl(picName);
            hotel.setRating(rating);
            pictureRepository.save(picture);
            hotel.getPictures().add(picture);
        }
        hotelRepository.save(hotel);
        return "redirect:/allHotels";
    }

    @GetMapping("/allRegions")
    public String regions(ModelMap map) {
        map.addAttribute("allRegions", regionRepository.findAll());
        return "region";
    }



    @GetMapping("/allCities")
    public String cities(ModelMap map) {
        map.addAttribute("allCities", cityRepository.findAll());
        return "city";
    }

    @GetMapping("/allHotels")
    public String hotels(ModelMap map) {
        map.addAttribute("allHotels", hotelRepository.findAll());
        return "hotel";
    }

    @GetMapping("/delete")
    public String del(ModelMap map) {
        List<User> user = userRepository.findAllByType(UserType.USER);
        map.addAttribute("users", user);
        return "deleteUser";
    }

    @GetMapping("/deleteUser")
    public String deleteUser(@RequestParam("userId") int id) {
        userRepository.delete(userRepository.findOne(id));
        return "redirect:/delete";
    }



    @GetMapping("/deleteRegion")
    public String dR(ModelMap map) {
        List<Region> allRegions = regionRepository.findAll();
        map.addAttribute("allRegions", allRegions);
        return "deleteRegion";
    }

    @GetMapping("/deleteRByID")
    public String deleteRegion(@RequestParam("regionId") int id) {
        regionRepository.delete(id);
        return "redirect:/deleteRegion";
    }

    @GetMapping("/deleteCity")
    public String deletC(ModelMap map){
        List<City> allCitys =cityRepository.findAll();
        map.addAttribute("allCities",allCitys);
        return "deleteCity";
    }
    @GetMapping("/deleteCityById")
    public String deleteCity(@RequestParam("cityId")int id){
        cityRepository.delete(id);
        return "redirect:/deleteCity";
    }
@GetMapping("/deleteHotel")
    public String deletH(ModelMap map) {
    List<Hotel> allHotels = hotelRepository.findAll();
    map.addAttribute("allHotels", allHotels);
    return "deleteHotel";

}
@GetMapping("/deleteHotelById")
    public String deleteHotel(@RequestParam("hotelId")int id){
        hotelRepository.delete(id);
        return "redirect:/deleteHotel";
}



@GetMapping("/deleteRegionPost")
   public String dRegionPost(ModelMap map){
    List<RegionPost> allRegionPosts = regionPostRepository.findAll();
    map.addAttribute("allRegionPosts", allRegionPosts);
    return "deleteRegionPost";
}

//   @GetMapping("/deleteRegionPostById")
//    public String deleteRegionPost(@RequestParam("regionId")int id) {
//       regionRepository.delete(id);
//       return "redirect:/deleteRegionPost";
//
//   }
//
//    @GetMapping("/deleteCityPost")
//    public String dCityPost(ModelMap map) {
//        List<CityPost> allCityPosts = cityPostRepository.findAll();
//        map.addAttribute("allCityPosts", allCityPosts);
//        return "deleteCityPost";
//    }
    @GetMapping("/deleteCityPostById")
    public String deleteCityPost(@RequestParam("cityId")int id) {
        cityRepository.delete(id);
        return "redirect:/deleteCityPost";
    }}