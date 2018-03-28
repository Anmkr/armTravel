package com.example.armtravel.controller;


import com.example.armtravel.model.*;
import com.example.armtravel.repository.*;
import com.example.armtravel.security.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private File getFilePath;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RegionRepository regionRepository;
    @Autowired
    private RegionPostRepository regionPostRepository;
    @Autowired
    private RegionPostCommentRepository regionPostCommentRepository;
    @Autowired
    private CityRepository cityRepository;
    @Autowired
    protected CityPostRepository cityPostRepository;
    @Autowired
    private FoodRepository foodRepository;
    @Autowired
    private FoodPostRepository foodPostRepository;

    @GetMapping("/userPage")
    public String userPage(ModelMap map) {
        map.addAttribute("region", new Region());
        map.addAttribute("regionPost", new RegionPost());
        map.addAttribute("city", new City());
        map.addAttribute("cityPost", new CityPost());
        map.addAttribute("food", new Food());
        map.addAttribute("foodPost", new FoodPost());
        map.addAttribute("allUsers", userRepository.findAll());
        map.addAttribute("allRegions", regionRepository.findAll());
        map.addAttribute("allRegionPosts", regionPostRepository.findAll());
        map.addAttribute("allCities", cityRepository.findAll());
        map.addAttribute("allCityPosts", cityPostRepository.findAll());
        map.addAttribute("allFoods", foodRepository.findAll());
        map.addAttribute("allFoodPosts", foodPostRepository.findAll());

        return "user";
    }

    @PostMapping("/addRegionPost")
    public String addRegionPost(@RequestParam("regionPostImage") MultipartFile multipartFile, @ModelAttribute("regionPost") RegionPost regionPost) throws IOException {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String picName = System.currentTimeMillis() + "_" + multipartFile.getOriginalFilename();
        File picture = new File(getFilePath + "\\" + picName);
        multipartFile.transferTo(picture);
        regionPost.setPicture(picName);
        regionPost.setUser(principal.getUser());
        regionPostRepository.save(regionPost);
        return "redirect:/userPage";
    }

    @PostMapping("/addCityPost")
    public String addCityPost(@RequestParam("cityPostImage") MultipartFile multipartFile, @ModelAttribute("cityPost") CityPost cityPost) throws IOException {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String picName = System.currentTimeMillis() + "_" + multipartFile.getOriginalFilename();
        File picture = new File(getFilePath + "\\" + picName);
        multipartFile.transferTo(picture);
        cityPost.setUser(principal.getUser());
        cityPostRepository.save(cityPost);
        return "redirect:/userPage";
    }

    @GetMapping("/regionPostPage")
    public String rPostPage(ModelMap map) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        List<RegionPost> allRPostByUser = regionPostRepository.findAllByUser(principal.getUser());
        map.addAttribute("rPosts", allRPostByUser);
        return "regionPost";

    }

    @GetMapping("/rPostSinglePage")
    public String rPostSinglePage(@RequestParam(value = "rPostId") int id, ModelMap map) {
        RegionPost rPost = regionPostRepository.findOne(id);
        map.addAttribute("rPost", rPost);
        map.addAttribute("regionPostComment", new RegionPostComment());
        return "rPostSingle";
    }

    @GetMapping("/rPostCoomment")
    public String addRPostComment(@ModelAttribute("regionPostComment") RegionPostComment regionPostComment, @RequestParam("rPostId") int id) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        regionPostComment.setUser(principal.getUser());
        regionPostComment.setRegionPost(regionPostRepository.findOne(id));
        regionPostCommentRepository.save(regionPostComment);
        return "redirect:/rPostSinglePage?rPostId=" + id;
    }

//    @GetMapping("/addFood")
//    public String addFood(@ModelAttribute("food") Food food) {
//        foodRepository.save(food);
//        return "redirect:/userPage";
//    }
//
//
//    @PostMapping("/addFoodPost")
//    public String addFoodPost(@RequestParam("foodPostImage") MultipartFile multipartFile, @ModelAttribute("foodPost") FoodPost foodPost) throws IOException {
//        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//        String picName = System.currentTimeMillis() + "_" + multipartFile.getOriginalFilename();
//        File picture = new File(getFilePath + "\\" + picName);
//        multipartFile.transferTo(picture);
//        foodPost.setPicture(picName);
//        foodPost.setUser(principal.getUser());
//        foodPostRepository.save(foodPost);
//        return "redirect:/userPage";
//    }
}








