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
@Table(name = "region_post")
public class RegionPost {
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
    private Region region;
    @ManyToOne
    private User user;
}
