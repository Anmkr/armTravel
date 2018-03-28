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
//        map.addAttribute("allCities", hotelRepository.findAll());
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
    public String Regions(ModelMap map) {
        map.addAttribute("allRegions", regionRepository.findAll());
        return "region";

    }

    @GetMapping("/allCities")
    public String Cities(ModelMap map) {
        map.addAttribute("allCities", cityRepository.findAll());
        return "city";
    }

    @GetMapping("/allHotels")
    public String Hotels(ModelMap map) {
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
    public String deleteRegion(@RequestParam("regionId") int id) {
        regionRepository.delete(regionRepository.findOne(id));
        return "redirect:/admin";
    }

    @GetMapping("/deleteCity")
    public String deleteCity(@RequestParam("cityId") int id) {
        cityRepository.delete(cityRepository.findOne(id));
        return "redirect:/admin";
    }

    @GetMapping("/deleteHotel")
    public String deleteHotel(@RequestParam("hotelId") int id) {
        hotelRepository.delete(hotelRepository.findOne(id));
        return "redirect:/admin";
    }

    @GetMapping("/deleteRegionPost")
    public String deleteRegionPost(@RequestParam("regionPostId") int id) {
        regionPostRepository.delete(regionPostRepository.findOne(id));
        return "redirect:/admin";
    }

    @GetMapping("/deleteCityPost")
    public String deleteCityPost(@RequestParam("cityPostId") int id) {
        cityPostRepository.delete(cityPostRepository.findOne(id));
        return "redirect:/admin";
    }
}