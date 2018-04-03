package com.example.armtravel.repository;

import com.example.armtravel.model.Region;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface RegionRepository extends JpaRepository<Region, Integer> {

    List<Region> findRegionByNameContains(String name);

}

