package com.codesquad.airbnb.accommodation.domain;

import com.codesquad.airbnb.accommodation.controller.AccommodationHost;
import com.codesquad.airbnb.accommodation.domain.price.Price;

import java.util.List;

public class Accommodation {
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

    protected Accommodation(Long id, String name, AccommodationOption accommodationOption, double reviewRating, int reviewCounts, String mainImage, List<String> images, String description, AccommodationHost accommodationHost, Price price) {
        this.id = id;
        this.name = name;
        this.accommodationOption = accommodationOption;
        this.reviewRating = reviewRating;
        this.reviewCounts = reviewCounts;
        this.mainImage = mainImage;
        this.images = images;
        this.description = description;
        this.accommodationHost = accommodationHost;
        this.price = price;
    }

    public static AccommodationBuilder builder() {
        return AccommodationBuilder.anAccommodation();
    }

    public int priceForNights(int nights) {
        return price.priceForNights(nights);
    }

    public int discountPrice(int nights) {
        return price.discountPrice(nights);
    }

    public int cleaningFee(int nights) {
        return price.cleaningFee(nights);
    }

    public int serviceFee(int nights) {
        return price.serviceFee(nights);
    }

    public int accommodationTax(int nights) {
        return price.accommodationTax(nights);
    }

    public int totalPrice(int nights) {
        return priceForNights(nights) - discountPrice(nights) + cleaningFee(nights) + serviceFee(nights) + accommodationTax(nights);
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public AccommodationOption getAccommodationOption() {
        return accommodationOption;
    }

    public double getReviewRating() {
        return reviewRating;
    }

    public int getReviewCounts() {
        return reviewCounts;
    }

    public String getMainImage() {
        return mainImage;
    }

    public List<String> getImages() {
        return images;
    }

    public String getDescription() {
        return description;
    }

    public AccommodationHost getAccommodationHost() {
        return accommodationHost;
    }
}
