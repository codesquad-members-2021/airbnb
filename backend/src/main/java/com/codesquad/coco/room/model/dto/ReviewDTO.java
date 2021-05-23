package com.codesquad.coco.room.model.dto;

public class ReviewDTO {

    private double star;
    private double review;

    public ReviewDTO(double star, double review) {
        this.star = star;
        this.review = review;
    }

    public double getStar() {
        return star;
    }

    public double getReview() {
        return review;
    }
}
