package com.example.armtravel.controller;

import com.example.armtravel.model.User;
import com.example.armtravel.model.UserType;
import com.example.armtravel.repository.CityPostRepository;
import com.example.armtravel.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;
//    @Autowired
//    private CityPostRepository cityPostRepository;

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String adminPage(ModelMap map) {
        map.addAttribute("user", new User());
       // map.addAttribute("CityPosts", cityPostRepository.findAll());
        map.addAttribute("allUsers", userRepository.findAll());

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


}

