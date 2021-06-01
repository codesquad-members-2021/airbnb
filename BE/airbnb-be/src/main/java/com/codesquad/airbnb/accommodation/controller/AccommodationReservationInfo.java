package com.codesquad.airbnb.accommodation.controller;

import com.codesquad.airbnb.accommodation.domain.Accommodation;
import com.codesquad.airbnb.reservation.domain.ReservationDetail;

import java.util.Objects;

public class AccommodationReservationInfo {
    private Long id;
    private int pricePerNight;
    private int priceForNights;
    private int discountPrice;
    private int cleaningFee;
    private int serviceFee;
    private int accommodationTax;
    private int totalPrice;
    private int reviewCounts;

    private AccommodationReservationInfo() {
    }

    protected AccommodationReservationInfo(Long id, int pricePerNight, int priceForNights, int discountPrice, int cleaningFee, int serviceFee, int accommodationTax, int totalPrice, int reviewCounts) {
        this.id = id;
        this.pricePerNight = pricePerNight;
        this.priceForNights = priceForNights;
        this.discountPrice = discountPrice;
        this.cleaningFee = cleaningFee;
        this.serviceFee = serviceFee;
        this.accommodationTax = accommodationTax;
        this.totalPrice = totalPrice;
        this.reviewCounts = reviewCounts;
    }

    public static AccommodationReservationInfo of(Accommodation accommodation, ReservationDetail reservationDetail) {
        return builder().id(accommodation.getId())
                       .pricePerNight(accommodation.getAccommodationOption().getPricePerNight())
                       .priceForNights(accommodation.priceForNights(reservationDetail))
                       .discountPrice(accommodation.discountPrice(reservationDetail))
                       .cleaningFee(accommodation.cleaningFee(reservationDetail))
                       .serviceFee(accommodation.serviceFee(reservationDetail))
                       .accommodationTax(accommodation.accommodationTax(reservationDetail))
                       .totalPrice(accommodation.totalPrice(reservationDetail))
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

    public int getDiscountPrice() {
        return discountPrice;
    }

    public int getCleaningFee() {
        return cleaningFee;
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
        return pricePerNight == that.pricePerNight && priceForNights == that.priceForNights && discountPrice == that.discountPrice && cleaningFee == that.cleaningFee && serviceFee == that.serviceFee && accommodationTax == that.accommodationTax && totalPrice == that.totalPrice && reviewCounts == that.reviewCounts && Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, pricePerNight, priceForNights, discountPrice, cleaningFee, serviceFee, accommodationTax, totalPrice, reviewCounts);
    }

    @Override
    public String toString() {
        return "AccommodationReservationInfo{" +
                       "id=" + id +
                       ", pricePerNight=" + pricePerNight +
                       ", priceForNights=" + priceForNights +
                       ", discountPrice=" + discountPrice +
                       ", cleaningFee=" + cleaningFee +
                       ", serviceFee=" + serviceFee +
                       ", accommodationTax=" + accommodationTax +
                       ", totalPrice=" + totalPrice +
                       ", reviewCounts=" + reviewCounts +
                       '}';
    }
}
