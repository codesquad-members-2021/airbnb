package com.codesquad.airbnb.accommodation.controller;

import com.codesquad.airbnb.accommodation.domain.AccommodationOption;

import java.util.List;

public final class AccommodationDetailResponseBuilder {
    private Long id;
    private String name;
    private AccommodationOption accommodationOption;
    private Integer totalPrice;
    private Integer pricePerNight;
    private double reviewRating;
    private int reviewCounts;
    private String mainImage;
    private List<String> images;
    private String description;
    private AccommodationHost accommodationHost;

    private AccommodationDetailResponseBuilder() {
    }

    public static AccommodationDetailResponseBuilder anAccommodationDetailResponse() {
        return new AccommodationDetailResponseBuilder();
    }

    public AccommodationDetailResponseBuilder id(Long id) {
        this.id = id;
        return this;
    }

    public AccommodationDetailResponseBuilder name(String name) {
        this.name = name;
        return this;
    }

    public AccommodationDetailResponseBuilder accommodationOption(AccommodationOption accommodationOption) {
        this.accommodationOption = accommodationOption;
        return this;
    }

    public AccommodationDetailResponseBuilder totalPrice(Integer totalPrice) {
        this.totalPrice = totalPrice;
        return this;
    }

    public AccommodationDetailResponseBuilder pricePerNight(Integer pricePerNight) {
        this.pricePerNight = pricePerNight;
        return this;
    }

    public AccommodationDetailResponseBuilder reviewRating(double reviewRating) {
        this.reviewRating = reviewRating;
        return this;
    }

    public AccommodationDetailResponseBuilder reviewCounts(int reviewCounts) {
        this.reviewCounts = reviewCounts;
        return this;
    }

    public AccommodationDetailResponseBuilder mainImage(String mainImage) {
        this.mainImage = mainImage;
        return this;
    }

    public AccommodationDetailResponseBuilder images(List<String> images) {
        this.images = images;
        return this;
    }

    public AccommodationDetailResponseBuilder description(String description) {
        this.description = description;
        return this;
    }

    public AccommodationDetailResponseBuilder accommodationHost(AccommodationHost accommodationHost) {
        this.accommodationHost = accommodationHost;
        return this;
    }

    public AccommodationDetailResponse build() {
        return new AccommodationDetailResponse(id, name, accommodationOption, totalPrice, pricePerNight, reviewRating, reviewCounts, mainImage, images, description, accommodationHost);
    }
}
