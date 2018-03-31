package com.example.armtravel.repository;


import com.example.armtravel.model.CityPost;
import com.example.armtravel.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
public interface CityPostRepository extends JpaRepository<CityPost,Integer> {
   List<CityPost> findAllByUser(User user);
}
