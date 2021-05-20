package com.codesquad.coco.rooms.model;

import org.springframework.data.annotation.Id;

public class Review {

    @Id
    private Long id;

    private double star;
    private double review;

    public Long getId() {
        return id;
    }

    public double getStar() {
        return star;
    }

    public double getReview() {
        return review;
    }
}
