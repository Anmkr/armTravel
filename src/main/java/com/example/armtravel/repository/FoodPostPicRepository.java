package com.example.armtravel.repository;


import com.example.armtravel.model.Picture;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FoodPostPicRepository extends JpaRepository<Picture,Integer> {
}
