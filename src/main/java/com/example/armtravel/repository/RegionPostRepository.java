package com.example.armtravel.repository;


import com.example.armtravel.model.RegionPost;
import com.example.armtravel.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RegionPostRepository extends JpaRepository<RegionPost, Integer> {
    List<RegionPost> findAllByUser(User user);
}
