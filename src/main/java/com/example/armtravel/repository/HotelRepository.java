package com.example.armtravel.repository;


import com.example.armtravel.model.Hotel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface HotelRepository extends JpaRepository<Hotel,Integer> {

    List<Hotel>findHotelsByNameContains(String name);
}
