package com.enolj.airbnb.web.dto;

import com.enolj.airbnb.domain.house.House;
import com.enolj.airbnb.domain.image.Image;

import static com.enolj.airbnb.web.dto.Location.createLocationByHouse;

public class SearchResponseDTO {

    private final Long id;
    private final String image;
    private final Location location;
    private final String name;
    private final int charge;
    private final double grade;
    private final int review;
    private final String description;
    private final String option;
    private final boolean wish;

    public SearchResponseDTO(Long id, String image, Location location, String name, int charge, double grade, int review, String description, String option, boolean wish) {
        this.id = id;
        this.image = image;
        this.location = location;
        this.name = name;
        this.charge = charge;
        this.grade = grade;
        this.review = review;
        this.description = description;
        this.option = option;
        this.wish = wish;
    }

    public static SearchResponseDTO createSearchResponseDTO(House house, Image image) {
        return new SearchResponseDTO(house.getId(), image.getUrl(), createLocationByHouse(house), house.getName(), house.getCharge(), house.getGrade(), house.getReview(), house.getDescription(), house.getOption(), false);
    }

    public Long getId() {
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

    public boolean isWish() {
        return wish;
    }
}
