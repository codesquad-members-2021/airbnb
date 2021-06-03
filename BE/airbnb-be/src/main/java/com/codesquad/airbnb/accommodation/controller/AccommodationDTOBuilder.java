package com.codesquad.airbnb.accommodation.controller;

import com.codesquad.airbnb.accommodation.domain.AccommodationOption;

import java.util.List;

public final class AccommodationDTOBuilder {
    private Long id;
    private String name;
    private AccommodationOption accommodationOption;
    private Integer totalPrice;
    private double reviewRating;
    private int reviewCounts;
    private String mainImage;
    private List<String> images;
    private String description;
    private AccommodationHost accommodationHost;

    private AccommodationDTOBuilder() {
    }

    public static AccommodationDTOBuilder anAccommodationDetailDTO() {
        return new AccommodationDTOBuilder();
    }

    public AccommodationDTOBuilder id(Long id) {
        this.id = id;
        return this;
    }

    public AccommodationDTOBuilder name(String name) {
        this.name = name;
        return this;
    }

    public AccommodationDTOBuilder accommodationOption(AccommodationOption accommodationOption) {
        this.accommodationOption = accommodationOption;
        return this;
    }

    public AccommodationDTOBuilder totalPrice(Integer totalPrice) {
        this.totalPrice = totalPrice;
        return this;
    }

    public AccommodationDTOBuilder reviewRating(double reviewRating) {
        this.reviewRating = reviewRating;
        return this;
    }

    public AccommodationDTOBuilder reviewCounts(int reviewCounts) {
        this.reviewCounts = reviewCounts;
        return this;
    }

    public AccommodationDTOBuilder mainImage(String mainImage) {
        this.mainImage = mainImage;
        return this;
    }

    public AccommodationDTOBuilder images(List<String> images) {
        this.images = images;
        return this;
    }

    public AccommodationDTOBuilder description(String description) {
        this.description = description;
        return this;
    }

    public AccommodationDTOBuilder accommodationHost(AccommodationHost accommodationHost) {
        this.accommodationHost = accommodationHost;
        return this;
    }

    public AccommodationDTO build() {
        return new AccommodationDTO(id, name, accommodationOption, totalPrice, reviewRating, reviewCounts, mainImage, images, description, accommodationHost);
    }
}
