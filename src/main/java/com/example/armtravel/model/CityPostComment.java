package com.example.armtravel.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.sql.Timestamp;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@Table(name = "city_post_comment")
public class CityPostComment {
    @Id
    @GeneratedValue
    @Column
    private int id;
    @Column
    private String title;
    @Column
    private String description;
@Column
private Timestamp timestamp;
@ManyToOne
    private User user;
    @ManyToOne
    private CityPost cityPost;

}

