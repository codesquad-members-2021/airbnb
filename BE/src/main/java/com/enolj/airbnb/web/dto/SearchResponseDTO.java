package com.enolj.airbnb.web.dto;

public class SearchResponseDTO {

    private final long id;
    private final String image;
    private final Location location;
    private final String name;
    private final int charge;
    private final double grade;
    private final int review;
    private final String description;
    private final String option;

    public SearchResponseDTO(long id, String image, Location location, String name, int charge, double grade, int review, String description, String option) {
        this.id = id;
        this.image = image;
        this.location = location;
        this.name = name;
        this.charge = charge;
        this.grade = grade;
        this.review = review;
        this.description = description;
        this.option = option;
    }

    public long getId() {
        return id;
    }

    public String getImage() {
        return image;
    }

    public Location getLocation() {
        return location;
    }

    public String getName() {
        return name;
    }

    public int getCharge() {
        return charge;
    }

    public double getGrade() {
        return grade;
    }

    public int getReview() {
        return review;
    }

    public String getDescription() {
        return description;
    }

    public String getOption() {
        return option;
    }
}
