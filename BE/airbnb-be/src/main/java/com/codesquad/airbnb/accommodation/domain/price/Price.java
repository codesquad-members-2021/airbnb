package com.codesquad.airbnb.accommodation.domain.price;

import com.codesquad.airbnb.reservation.domain.ReservationDetail;

public class Price {
    private int pricePerNight;
    private PricePolicies pricePolicies;

    private Price(int pricePerNight, PricePolicies pricePolicies) {
        this.pricePerNight = pricePerNight;
        this.pricePolicies = pricePolicies;
    }

    public static Price from(int pricePerNight) {
        return new Price(pricePerNight, PricePolicies.defaultPolicies());
    }

    public static Price of(int pricePerNight, PricePolicies pricePolicies) {
        return new Price(pricePerNight, pricePolicies);
    }

    public int pricePerNight() {
        return pricePerNight;
    }

    public int priceForNights(ReservationDetail reservationDetail) {
        return pricePerNight * reservationDetail.nights();
    }

    public int totalPrice(ReservationDetail reservationDetail) {
        return priceForNights(reservationDetail) - discountPrice(reservationDetail) + cleaningFee(reservationDetail) + serviceFee(reservationDetail) + accommodationTax(reservationDetail);
    }

    public int discountPrice(ReservationDetail reservationDetail) {
        return pricePolicies.discountPrice(reservationDetail, pricePerNight);
    }

    public int cleaningFee(ReservationDetail reservationDetail) {
        return pricePolicies.cleaningFee(reservationDetail, pricePerNight);
    }

    public int serviceFee(ReservationDetail reservationDetail) {
        return pricePolicies.serviceFee(reservationDetail, pricePerNight);
    }

    public int accommodationTax(ReservationDetail reservationDetail) {
        return pricePolicies.accommodationTax(reservationDetail, pricePerNight);
    }
}
