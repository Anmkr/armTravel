package com.example.armtravel.controller;


import com.example.armtravel.model.City;
import com.example.armtravel.model.CityPost;
import com.example.armtravel.model.Hotel;
import com.example.armtravel.model.Region;
import com.example.armtravel.repository.CityPostRepository;
import com.example.armtravel.repository.CityRepository;
import com.example.armtravel.repository.HotelRepository;
import com.example.armtravel.repository.RegionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;

@Controller
public class AdminController {


    @Autowired
    private CityPostRepository cityPostRepository;
    @Autowired
    private RegionRepository regionRepository;
    @Autowired
    private CityRepository cityRepository;
    @Autowired
    private HotelRepository hotelRepository;


    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(ModelMap map) {
        map.addAttribute("CityPost", new CityPost());
        map.addAttribute("region", new Region());
        map.addAttribute("hotel", new Hotel());
        map.addAttribute("city", new City());
        map.addAttribute("allCityPosts", cityPostRepository.findAll());
        map.addAttribute("allRegions", regionRepository.findAll());
        map.addAttribute("allCitys", cityRepository.findAll());
        return "admin";
    }

    @RequestMapping(value = "/addCityPost", method = RequestMethod.POST)
    public String addCategory(@ModelAttribute(name = "cityPost") CityPost cityPost) {
        cityPostRepository.save(cityPost);
        return "redirect:/admin";
    }

    private File returnFile() {
        File imageUploadPath = new File("C:\\Users\\User\\Desktop\\images\\");
        if (imageUploadPath.exists()) {
            imageUploadPath.mkdir();
        }
        return imageUploadPath;
    }

    @PostMapping(value = "/addRegion")
    public String saveAlbum(@Valid @ModelAttribute("region") Region region, @RequestParam("picture") MultipartFile multipartFile) throws IOException {
        String picName = System.currentTimeMillis() + "_" + multipartFile.getOriginalFilename();
        File file = new File(returnFile() + picName);
        multipartFile.transferTo(file);
        region.setPicUrl(picName);
        regionRepository.save(region);
        return "redirect:/admin";
    }

    @PostMapping("/addCity")
    public String addCity(@RequestParam("cityImage") MultipartFile cityImage, @ModelAttribute("city") City city) throws IOException {
        String picName = System.currentTimeMillis() + "_" + cityImage.getOriginalFilename();
        File file = new File(returnFile() + picName);
        cityImage.transferTo(file);
        city.setPicUrl(picName);
        cityRepository.save(city);
        return "redirect:/admin";
    }

    @PostMapping("/addHotel")
    public String addHotel(@RequestParam("hotelImage") MultipartFile hotelImage, @RequestParam("hotelRating")int rating,@ModelAttribute("hotel") Hotel hotel) throws IOException {
        String picName = System.currentTimeMillis() + "_" + hotelImage.getOriginalFilename();
        File file = new File(returnFile() + picName);
        hotelImage.transferTo(file);
        hotel.setPicUrl(picName);
        hotel.setRating(rating);
        hotelRepository.save(hotel);
        return "redirect:/admin";
    }

}