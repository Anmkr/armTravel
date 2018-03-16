package com.example.armtravel.controller;


import com.example.armtravel.model.CityPost;
import com.example.armtravel.repository.CityPostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {


    @Autowired
    private CityPostRepository cityPostRepository;


    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(ModelMap map) {
        map.addAttribute("CityPost", new CityPost());

        map.addAttribute("allCityPosts", cityPostRepository.findAll());

        return "admin";
    }

    @RequestMapping(value = "/addCityPost", method = RequestMethod.POST)
    public String addCategory(@ModelAttribute(name = "cityPost") CityPost cityPost) {
        cityPostRepository.save(cityPost);
        return "redirect:/admin";
    }
}