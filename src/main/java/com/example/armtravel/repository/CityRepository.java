package com.example.armtravel.repository;

import com.example.armtravel.model.City;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CityRepository extends JpaRepository<City,Integer> {
    List<City> findCitiesByNameContains(String name);
}