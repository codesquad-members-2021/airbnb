package com.codesquad.airbnb.accommodation.domain;

import com.codesquad.airbnb.accommodation.controller.AccommodationHost;
import com.codesquad.airbnb.accommodation.domain.price.Price;
import com.codesquad.airbnb.reservation.domain.ReservationDetail;

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

    public int priceForNights(ReservationDetail reservationDetail) {
        return price.priceForNights(reservationDetail);
    }

    public int discountPrice(ReservationDetail reservationDetail) {
        return price.discountPrice(reservationDetail);
    }

    public int cleaningFee(ReservationDetail reservationDetail) {
        return price.cleaningFee(reservationDetail);
    }

    public int serviceFee(ReservationDetail reservationDetail) {
        return price.serviceFee(reservationDetail);
    }

    public int accommodationTax(ReservationDetail reservationDetail) {
        return price.accommodationTax(reservationDetail);
    }

    public int totalPrice(ReservationDetail reservationDetail) {
        return price.totalPrice(reservationDetail);
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
