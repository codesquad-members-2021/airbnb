package com.codesquad.airbnb.accommodation.controller;

import com.codesquad.airbnb.accommodation.domain.Accommodation;
import com.codesquad.airbnb.accommodation.domain.AccommodationOption;

import java.util.Objects;

public class AccommodationResponse {
    private Long id;
    private String name;
    private AccommodationOption accommodationOption;
    private Integer totalPrice;
    private double reviewRating;
    private int reviewCounts;
    private String mainImage;

    public AccommodationResponse() {
    }

    public AccommodationResponse(Long id, String name, AccommodationOption accommodationOption, Integer totalPrice, double reviewRating, int reviewCounts, String mainImage) {
        this.id = id;
        this.name = name;
        this.accommodationOption = accommodationOption;
        this.totalPrice = totalPrice;
        this.reviewRating = reviewRating;
        this.reviewCounts = reviewCounts;
        this.mainImage = mainImage;
    }

    public static AccommodationResponse from(Accommodation accommodation) {
        return builder().id(accommodation.getId())
                       .name(accommodation.getName())
                       .accommodationOption(accommodation.getAccommodationOption())
                       .reviewRating(accommodation.getReviewRating())
                       .reviewCounts(accommodation.getReviewCounts())
                       .mainImage(accommodation.getMainImage())
                       .build();
    }

    public static AccommodationResponse of(Accommodation accommodation, int nights) {
        return builder().id(accommodation.getId())
                       .name(accommodation.getName())
                       .accommodationOption(accommodation.getAccommodationOption())
                       .totalPrice(accommodation.totalPrice(nights))
                       .reviewRating(accommodation.getReviewRating())
                       .reviewCounts(accommodation.getReviewCounts())
                       .mainImage(accommodation.getMainImage())
                       .build();
    }

    public static AccommodationResponseBuilder builder() {
        return AccommodationResponseBuilder.anAccommodationDTO();
    }


    public int pricePerNight() {
        return accommodationOption.getPricePerNight();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public AccommodationOption getAccommodationOption() {
        return accommodationOption;
    }

    public void setAccommodationOption(AccommodationOption accommodationOption) {
        this.accommodationOption = accommodationOption;
    }

    public Integer getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Integer totalPrice) {
        this.totalPrice = totalPrice;
    }

    public double getReviewRating() {
        return reviewRating;
    }

    public void setReviewRating(double reviewRating) {
        this.reviewRating = reviewRating;
    }

    public int getReviewCounts() {
        return reviewCounts;
    }

    public void setReviewCounts(int reviewCounts) {
        this.reviewCounts = reviewCounts;
    }

    public String getMainImage() {
        return mainImage;
    }

    public void setMainImage(String mainImage) {
        this.mainImage = mainImage;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AccommodationResponse that = (AccommodationResponse) o;
        return Double.compare(that.reviewRating, reviewRating) == 0 && reviewCounts == that.reviewCounts && Objects.equals(id, that.id) && Objects.equals(name, that.name) && Objects.equals(accommodationOption, that.accommodationOption) && Objects.equals(totalPrice, that.totalPrice) && Objects.equals(mainImage, that.mainImage);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, accommodationOption, totalPrice, reviewRating, reviewCounts, mainImage);
    }

    @Override
    public String toString() {
        return "AccommodationDTO{" +
                       "id=" + id +
                       ", name='" + name + '\'' +
                       ", accommodationOption=" + accommodationOption +
                       ", totalPrice=" + totalPrice +
                       ", reviewRating=" + reviewRating +
                       ", reviewCounts=" + reviewCounts +
                       ", mainImage='" + mainImage + '\'' +
                       '}';
    }
}
