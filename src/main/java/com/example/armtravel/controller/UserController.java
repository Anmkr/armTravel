package com.example.armtravel.controller;


import com.example.armtravel.model.*;
import com.example.armtravel.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;


@Controller
public class UserController{
        @Autowired
        private File getFilePath;
        @Autowired
        private CityPostRepository cityPostRepository;
        @Autowired
        private UserRepository userRepository;
        @Autowired
        private PasswordEncoder passwordEncoder;
        @Autowired
        private FoodRepository foodRepository;
        @Autowired
        private RegionRepository regionRepository;
        @Autowired
        private CityRepository cityRepository;

        @RequestMapping(value = "/userPage", method = RequestMethod.GET)
        public String userPage(ModelMap map) {
            map.addAttribute("food", new Food());
            map.addAttribute("cityPost", new CityPost());
            map.addAttribute("city", new City());
            map.addAttribute("allCities", cityRepository.findAll());
            map.addAttribute("allCityPosts", cityPostRepository.findAll());
            map.addAttribute("allFoods", foodRepository.findAll());
            map.addAttribute("allUsers", userRepository.findAll());
            map.addAttribute("allRegions", regionRepository.findAll());
            return "user";
        }

        @RequestMapping(value = "/add", method = RequestMethod.POST)
        public String addUser(@ModelAttribute(name = "user") User user) {
            user.setType(UserType.USER);
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            user.setVerify(false);
            userRepository.save(user);
            return "redirect:/loginPage";
        }

        @GetMapping("/addFood")
        public String addFood(@ModelAttribute("food") Food food) {
            foodRepository.save(food);
            return "redirect:/userPage";
        }

        @GetMapping("/addCityPost")
        public String addCityPost(@RequestParam("cityPostImage") MultipartFile cityImage, @ModelAttribute("cityPost") CityPost cityPost) throws IOException {
            String picName = System.currentTimeMillis() + "_" + cityImage.getOriginalFilename();
            File file = new File(getFilePath + "\\" + picName);
            cityImage.transferTo(file);
            cityPost.setPicture(picName);
            cityPostRepository.save(cityPost);
            return "redirect:/userPage";
        }


}