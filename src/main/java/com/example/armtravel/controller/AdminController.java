package com.example.armtravel.controller;


import com.example.armtravel.model.City;
import com.example.armtravel.model.Hotel;
import com.example.armtravel.model.Region;
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
    private File getFilePath;

    @Autowired
    private RegionRepository regionRepository;
    @Autowired
    private CityRepository cityRepository;
    @Autowired
    private HotelRepository hotelRepository;



    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(ModelMap map) {
        map.addAttribute("region", new Region());
        map.addAttribute("hotel", new Hotel());
        map.addAttribute("city", new City());
        map.addAttribute("allHotel",hotelRepository.findAll());
        map.addAttribute("allRegions", regionRepository.findAll());
        map.addAttribute("allCitys", cityRepository.findAll());
        return "admin";
    }

    @PostMapping(value = "/addRegion")
    public String addRegion(@Valid @ModelAttribute("region") Region region, @RequestParam("picture") MultipartFile multipartFile) throws IOException {
        String picName = System.currentTimeMillis() + "_" + multipartFile.getOriginalFilename();
        File file = new File(getFilePath +"\\"+ picName);
        multipartFile.transferTo(file);
        region.setPicUrl(picName);
        regionRepository.save(region);
        return "redirect:/admin";
    }

    @PostMapping("/addCity")
    public String addCity(@RequestParam("cityImage") MultipartFile cityImage,@Valid @ModelAttribute("city") City city) throws IOException {
        String picName = System.currentTimeMillis() + "_" + cityImage.getOriginalFilename();
        File file = new File(getFilePath +"\\"+ picName);
        cityImage.transferTo(file);
        city.setPicUrl(picName);
        cityRepository.save(city);
        return "redirect:/admin";
    }

    @PostMapping("/addHotel")
    public String addHotel(@Valid @RequestParam("hotelImage") MultipartFile hotelImage, @RequestParam("hotelRating") int rating, @ModelAttribute("hotel") Hotel hotel) throws IOException {
        String picName = System.currentTimeMillis() + "_" + hotelImage.getOriginalFilename();
        File file = new File(getFilePath +"\\"+ picName);
        hotelImage.transferTo(file);
        hotel.setPicUrl(picName);
        hotel.setRating(rating);
        hotelRepository.save(hotel);
        return "redirect:/admin";
    }

}