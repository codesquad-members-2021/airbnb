package com.codesquad.airbnb.accommodation.domain;

import com.codesquad.airbnb.accommodation.controller.AccommodationHost;
import com.codesquad.airbnb.accommodation.domain.price.Price;
import com.codesquad.airbnb.accommodation.domain.price.PricePolicies;

import java.util.List;

public final class AccommodationBuilder {
    private Long id;
    private String name;
    private AccommodationOption accommodationOption;
    private double reviewRating;
    private int reviewCounts;
    private String mainImage;
    private List<String> images;
    private String description;
    private AccommodationHost accommodationHost;
    private Price price;

    private AccommodationBuilder() {
    }

    public static AccommodationBuilder anAccommodation() {
        return new AccommodationBuilder();
    }

    public AccommodationBuilder id(Long id) {
        this.id = id;
        return this;
    }

    public AccommodationBuilder name(String name) {
        this.name = name;
        return this;
    }

    public AccommodationBuilder accommodationOption(AccommodationOption accommodationOption) {
        this.accommodationOption = accommodationOption;
        return this;
    }

    public AccommodationBuilder reviewRating(double reviewRating) {
        this.reviewRating = reviewRating;
        return this;
    }

    public AccommodationBuilder reviewCounts(int reviewCounts) {
        this.reviewCounts = reviewCounts;
        return this;
    }

    public AccommodationBuilder mainImage(String mainImage) {
        this.mainImage = mainImage;
        return this;
    }

    public AccommodationBuilder images(List<String> images) {
        this.images = images;
        return this;
    }

    public AccommodationBuilder description(String description) {
        this.description = description;
        return this;
    }

    public AccommodationBuilder accommodationHost(AccommodationHost accommodationHost) {
        this.accommodationHost = accommodationHost;
        return this;
    }

    public AccommodationBuilder accommodationPrice(Price price) {
        this.price = price;
        return this;
    }

    public AccommodationBuilder accommodationPrice(int pricePerNight) {
        this.price = Price.from(pricePerNight);
        return this;
    }

    public AccommodationBuilder accommodationPrice(int pricePerNight, PricePolicies pricePolicies) {
        this.price = Price.of(pricePerNight, pricePolicies);
        return this;
    }

    public Accommodation build() {
        return new Accommodation(id, name, accommodationOption, reviewRating, reviewCounts, mainImage, images, description, accommodationHost, price);
    }
}
