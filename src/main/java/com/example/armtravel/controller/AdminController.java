package com.example.armtravel.controller;


import com.example.armtravel.model.City;
import com.example.armtravel.model.Hotel;
import com.example.armtravel.model.Picture;
import com.example.armtravel.model.Region;
import com.example.armtravel.repository.CityRepository;
import com.example.armtravel.repository.HotelRepository;
import com.example.armtravel.repository.PictureRepository;
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

    @Autowired
    private PictureRepository pictureRepository;


    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(ModelMap map) {
        map.addAttribute("region", new Region());
        map.addAttribute("city", new City());
        map.addAttribute("hotel", new Hotel());
        map.addAttribute("allCities",hotelRepository.findAll());
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
        return "redirect:/admin";
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
        return "redirect:/admin";
    }

    @PostMapping(value = "/addHotel")
    public String addHotel(@Valid @ModelAttribute("hotel") Hotel hotel,@RequestParam("hotelRating") int rating, @RequestParam("picture") MultipartFile[] multipartFile) throws IOException {
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
        return "redirect:/admin";
    }






}