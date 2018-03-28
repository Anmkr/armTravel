package com.example.armtravel.repository;

import com.example.armtravel.model.User;
import com.example.armtravel.model.UserType;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Integer> {
    User findOneByEmail(String email);

    List<User> findAllByType(UserType type);

}
