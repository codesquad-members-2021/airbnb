package com.team19.airbnb.domain.room;

public class Review {

    private Double grade;
    private Integer reviewer;

    Review(Double grade, Integer reviewer) {
        this.grade = grade;
        this.reviewer = reviewer;
    }

    public static Review create(Double grade, Integer reviewers) {
        return new Review(grade, reviewers);
    }

    public Double getGrade() {
        return grade;
    }

    public Integer getReviewer() {
        return reviewer;
    }
}
