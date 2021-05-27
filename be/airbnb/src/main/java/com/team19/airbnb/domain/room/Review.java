package com.team19.airbnb.domain.room;

public class Review {
    private Double score;
    private Integer reviewers;

    Review(Double score, Integer reviewers) {
        this.score = score;
        this.reviewers = reviewers;
    }

    public static Review create(Double score, Integer reviewers) {
        return new Review(score, reviewers);
    }

    public Double getScore() {
        return score;
    }

    public Integer getReviewers() {
        return reviewers;
    }
}
