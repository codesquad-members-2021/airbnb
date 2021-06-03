package com.codesquad.airbnb.accommodation.controller;

import com.codesquad.airbnb.accommodation.domain.AccommodationOption;

public final class AccommodationResponseBuilder {
    private Long id;
    private String name;
    private AccommodationOption accommodationOption;
    private Integer totalPrice;
    private Integer pricePerNight;
    private double reviewRating;
    private int reviewCounts;
    private String mainImage;

    private AccommodationResponseBuilder() {
    }

    public static AccommodationResponseBuilder anAccommodationResponse() {
        return new AccommodationResponseBuilder();
    }

    public AccommodationResponseBuilder id(Long id) {
        this.id = id;
        return this;
    }

    public AccommodationResponseBuilder name(String name) {
        this.name = name;
        return this;
    }

    public AccommodationResponseBuilder accommodationOption(AccommodationOption accommodationOption) {
        this.accommodationOption = accommodationOption;
        return this;
    }

    public AccommodationResponseBuilder totalPrice(Integer totalPrice) {
        this.totalPrice = totalPrice;
        return this;
    }

    public AccommodationResponseBuilder pricePerNight(Integer pricePerNight) {
        this.pricePerNight = pricePerNight;
        return this;
    }

    public AccommodationResponseBuilder reviewRating(double reviewRating) {
        this.reviewRating = reviewRating;
        return this;
    }

    public AccommodationResponseBuilder reviewCounts(int reviewCounts) {
        this.reviewCounts = reviewCounts;
        return this;
    }

    public AccommodationResponseBuilder mainImage(String mainImage) {
        this.mainImage = mainImage;
        return this;
    }

    public AccommodationResponse build() {
        return new AccommodationResponse(id, name, accommodationOption, totalPrice, pricePerNight, reviewRating, reviewCounts, mainImage);
    }
}
