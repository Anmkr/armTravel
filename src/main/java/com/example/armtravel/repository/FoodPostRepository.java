package com.example.armtravel.repository;


import com.example.armtravel.model.FoodPost;
import com.example.armtravel.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
public interface FoodPostRepository extends JpaRepository<FoodPost,Integer> {
    List<FoodPost> findAllByUser(User user);
}
