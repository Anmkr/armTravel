package com.example.armtravel.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@Table(name = "city_post")
public class CityPost {
    @Id
    @GeneratedValue
    @Column
    private int id;
    @Column
    private String title;
    @Column
    private String description;
    @Column
    private String picture;
    @ManyToOne
    private City city;
    @ManyToOne
    private User user;
}


