package com.enolj.airbnb.web.dto;

import com.enolj.airbnb.domain.house.House;

public class ReservationInfoResponseDTO {

    private final int charge;
    private final double cleaningRatio;
    private final double serviceRatio;
    private final double discountRatio;
    private final int review;

    public ReservationInfoResponseDTO(int charge, double cleaningRatio, double serviceRatio, double discountRatio, int review) {
        this.charge = charge;
        this.cleaningRatio = cleaningRatio;
        this.serviceRatio = serviceRatio;
        this.discountRatio = discountRatio;
        this.review = review;
    }

    public static ReservationInfoResponseDTO createReservationInfoResponseDTO(House house) {
        return new ReservationInfoResponseDTO(house.getCharge(), house.getCleaningRatio(), house.getServiceRatio(), house.getDiscountRatio(), house.getReview());
    }

    public int getCharge() {
        return charge;
    }

    public double getCleaningRatio() {
        return cleaningRatio;
    }

    public double getServiceRatio() {
        return serviceRatio;
    }

    public double getDiscountRatio() {
        return discountRatio;
    }

    public int getReview() {
        return review;
    }

    @Override
    public String toString() {
        return "ReservationInfoResponseDTO{" +
                "charge=" + charge +
                ", cleaningRatio=" + cleaningRatio +
                ", serviceRatio=" + serviceRatio +
                ", discountRatio=" + discountRatio +
                '}';
    }
}
