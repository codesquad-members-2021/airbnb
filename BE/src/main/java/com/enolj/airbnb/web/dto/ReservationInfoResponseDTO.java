package com.enolj.airbnb.web.dto;

import com.enolj.airbnb.domain.house.House;

public class ReservationInfoResponseDTO {

    private final int charge;
    private final double cleaningRatio;
    private final double serviceRatio;
    private final double discountRatio;

    public ReservationInfoResponseDTO(int charge, double cleaningRatio, double serviceRatio, double discountRatio) {
        this.charge = charge;
        this.cleaningRatio = cleaningRatio;
        this.serviceRatio = serviceRatio;
        this.discountRatio = discountRatio;
    }

    public static ReservationInfoResponseDTO createReservationInfoResponseDTO(House house) {
        return new ReservationInfoResponseDTO(house.getCharge(), house.getCleaningRatio(), house.getServiceRatio(), house.getDiscountRatio());
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
