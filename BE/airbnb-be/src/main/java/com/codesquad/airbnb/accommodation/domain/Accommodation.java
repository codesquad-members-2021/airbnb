package com.codesquad.airbnb.accommodation.domain;

import com.codesquad.airbnb.accommodation.controller.AccommodationHost;

import java.util.List;

public class Accommodation {
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

    protected Accommodation(Long id, String name, AccommodationOption accommodationOption, Integer totalPrice, double reviewRating, int reviewCounts, String mainImage, List<String> images, String description, AccommodationHost accommodationHost, int priceForNights, int salePrice, int cleaningPrice, int serviceFee, int accommodationTax) {
        this.id = id;
        this.name = name;
        this.accommodationOption = accommodationOption;
        this.totalPrice = totalPrice;
        this.reviewRating = reviewRating;
        this.reviewCounts = reviewCounts;
        this.mainImage = mainImage;
        this.images = images;
        this.description = description;
        this.accommodationHost = accommodationHost;
        this.priceForNights = priceForNights;
        this.salePrice = salePrice;
        this.cleaningPrice = cleaningPrice;
        this.serviceFee = serviceFee;
        this.accommodationTax = accommodationTax;
    }

    public static AccommodationBuilder builder() {
        return AccommodationBuilder.anAccommodation();
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

    public Integer getTotalPrice() {
        return totalPrice;
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

    public int getPriceForNights() {
        return priceForNights;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public int getCleaningPrice() {
        return cleaningPrice;
    }

    public int getServiceFee() {
        return serviceFee;
    }

    public int getAccommodationTax() {
        return accommodationTax;
    }
}
