package com.codesquad.airbnb.accommodation.controller;

import com.codesquad.airbnb.accommodation.domain.AccommodationOption;

public final class AccommodationResponseBuilder {
    private Long id;
    private String name;
    private AccommodationOption accommodationOption;
    private Integer totalPrice;
    private double reviewRating;
    private int reviewCounts;
    private String mainImage;

    private AccommodationResponseBuilder() {
    }

    public static AccommodationResponseBuilder anAccommodationDTO() {
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
        AccommodationResponse accommodationResponse = new AccommodationResponse();
        accommodationResponse.setId(id);
        accommodationResponse.setName(name);
        accommodationResponse.setAccommodationOption(accommodationOption);
        accommodationResponse.setTotalPrice(totalPrice);
        accommodationResponse.setReviewRating(reviewRating);
        accommodationResponse.setReviewCounts(reviewCounts);
        accommodationResponse.setMainImage(mainImage);
        return accommodationResponse;
    }
}
