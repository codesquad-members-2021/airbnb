package com.codesquad.airbnb.accommodation.controller;

import com.codesquad.airbnb.accommodation.domain.Accommodation;

import java.util.Objects;

public class AccommodationReservationInfo {
    private Long id;
    private int pricePerNight;
    private int priceForNights;
    private int salePrice;
    private int cleaningPrice;
    private int serviceFee;
    private int accommodationTax;
    private int totalPrice;
    private int reviewCounts;

    private AccommodationReservationInfo() {
    }

    protected AccommodationReservationInfo(Long id, int pricePerNight, int priceForNights, int salePrice, int cleaningPrice, int serviceFee, int accommodationTax, int totalPrice, int reviewCounts) {
        this.id = id;
        this.pricePerNight = pricePerNight;
        this.priceForNights = priceForNights;
        this.salePrice = salePrice;
        this.cleaningPrice = cleaningPrice;
        this.serviceFee = serviceFee;
        this.accommodationTax = accommodationTax;
        this.totalPrice = totalPrice;
        this.reviewCounts = reviewCounts;
    }

    public static AccommodationReservationInfo from(Accommodation accommodation) {
        return builder().id(accommodation.getId())
                       .pricePerNight(accommodation.getAccommodationOption().getPricePerNight())
                       .priceForNights(accommodation.getPriceForNights())
                       .salePrice(accommodation.getSalePrice())
                       .cleaningPrice(accommodation.getCleaningPrice())
                       .serviceFee(accommodation.getServiceFee())
                       .accommodationTax(accommodation.getAccommodationTax())
                       .totalPrice(accommodation.getTotalPrice())
                       .reviewCounts(accommodation.getReviewCounts())
                       .build();
    }

    public static AccommodationReservationInfoBuilder builder() {
        return AccommodationReservationInfoBuilder.anAccommodationReservationInfo();
    }

    public Long getId() {
        return id;
    }

    public int getPricePerNight() {
        return pricePerNight;
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

    public int getTotalPrice() {
        return totalPrice;
    }

    public int getReviewCounts() {
        return reviewCounts;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AccommodationReservationInfo that = (AccommodationReservationInfo) o;
        return pricePerNight == that.pricePerNight && priceForNights == that.priceForNights && salePrice == that.salePrice && cleaningPrice == that.cleaningPrice && serviceFee == that.serviceFee && accommodationTax == that.accommodationTax && totalPrice == that.totalPrice && reviewCounts == that.reviewCounts && Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, pricePerNight, priceForNights, salePrice, cleaningPrice, serviceFee, accommodationTax, totalPrice, reviewCounts);
    }

    @Override
    public String toString() {
        return "AccommodationReservationInfo{" +
                       "id=" + id +
                       ", pricePerNight=" + pricePerNight +
                       ", priceForNights=" + priceForNights +
                       ", salePrice=" + salePrice +
                       ", cleaningPrice=" + cleaningPrice +
                       ", serviceFee=" + serviceFee +
                       ", accommodationTax=" + accommodationTax +
                       ", totalPrice=" + totalPrice +
                       ", reviewCounts=" + reviewCounts +
                       '}';
    }
}
