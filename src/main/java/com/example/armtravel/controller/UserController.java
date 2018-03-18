package com.example.armtravel.controller;


import com.example.armtravel.model.Food;
import com.example.armtravel.repository.FoodRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.example.armtravel.model.User;
import com.example.armtravel.model.UserType;
import com.example.armtravel.repository.UserRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;


@Controller
public class UserController {


    @Autowired
    private UserRepository userRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;
@Autowired
private FoodRepository foodRepository;

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String userPage(ModelMap map) {
        map.addAttribute("user", new User());
        map.addAttribute("food",new Food());
        map.addAttribute("allFoods",foodRepository.findAll());
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

    @RequestMapping(value = "/addFood", method = RequestMethod.POST)
    public String addFood(@ModelAttribute(name = "food") Food food) {
        foodRepository.save(food);
        return "redirect:/user";
    }



}