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
@Table(name="hotel")
public class Hotel {
    @Id
    @GeneratedValue
    @Column
    private int id;
    @Column
    private String name;
    @Column(name="pic_url")
    private String picUrl;
    @Column
    private String description;
@Column
private int rating;

    @ManyToOne
    private City city;
}
