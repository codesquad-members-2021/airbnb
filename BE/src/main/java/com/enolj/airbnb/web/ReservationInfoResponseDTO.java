package com.enolj.airbnb.web;

import com.enolj.airbnb.web.dto.Fee;

public class ReservationInfoResponseDTO {

    private final int charge;
    private final Fee fee;
    private final int discount;

    public ReservationInfoResponseDTO(int charge, Fee fee, int discount) {
        this.charge = charge;
        this.fee = fee;
        this.discount = discount;
    }

    public int getCharge() {
        return charge;
    }

    public Fee getFee() {
        return fee;
    }

    public int getDiscount() {
        return discount;
    }

    @Override
    public String toString() {
        return "ReservationInfoResponseDTO{" +
                "charge=" + charge +
                ", fee=" + fee +
                ", discount=" + discount +
                '}';
    }
}
