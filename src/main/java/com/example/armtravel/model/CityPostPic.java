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
@Table(name = "city_post_pic")
public class CityPostPic {
    @Id
    @GeneratedValue
    @Column
    private int id;
    @Column(name="pic_url")
    private String picUrl;

    @ManyToOne
    private CityPost cityPost;

}
