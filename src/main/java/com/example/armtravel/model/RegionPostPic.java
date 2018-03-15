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
@Table(name = "region_post_pic")
public class RegionPostPic {
    @Id
    @GeneratedValue
    @Column
    private int id;
    @Column(name="pic_url")
    private String picUrl;

    @ManyToOne
    private RegionPost regionPost;

}
