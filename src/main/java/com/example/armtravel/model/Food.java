package com.example.armtravel.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.LinkedList;
import java.util.List;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@Table(name="food")
public class Food {
    @Id
    @GeneratedValue
    @Column
    private int id;
    @Column
    private String name;
    @Column
    private String description;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name = "food_pic",
            joinColumns = {@JoinColumn(name = "food_id")},
            inverseJoinColumns = {@JoinColumn(name = "pic_id")})
    List<Picture> pictures = new LinkedList<>();


}


