package com.codesquad.airbnb.accommodation.domain;

import com.codesquad.airbnb.accommodation.controller.AccommodationHost;

import java.util.List;

public final class AccommodationBuilder {
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
    private int priceForNights;
    private int salePrice;
    private int cleaningPrice;
    private int serviceFee;
    private int accommodationTax;

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

    public AccommodationBuilder totalPrice(Integer totalPrice) {
        this.totalPrice = totalPrice;
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

    public AccommodationBuilder priceForNights(int priceForNights) {
        this.priceForNights = priceForNights;
        return this;
    }

    public AccommodationBuilder salePrice(int salePrice) {
        this.salePrice = salePrice;
        return this;
    }

    public AccommodationBuilder cleaningPrice(int cleaningPrice) {
        this.cleaningPrice = cleaningPrice;
        return this;
    }

    public AccommodationBuilder serviceFee(int serviceFee) {
        this.serviceFee = serviceFee;
        return this;
    }

    public AccommodationBuilder accommodationTax(int accommodationTax) {
        this.accommodationTax = accommodationTax;
        return this;
    }

    public Accommodation build() {
        return new Accommodation(id, name, accommodationOption, totalPrice, reviewRating, reviewCounts, mainImage, images, description, accommodationHost, priceForNights, salePrice, cleaningPrice, serviceFee, accommodationTax);
    }
}
