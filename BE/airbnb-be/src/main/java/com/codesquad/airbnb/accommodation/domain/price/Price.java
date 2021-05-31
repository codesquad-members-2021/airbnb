package com.codesquad.airbnb.accommodation.domain.price;

public class Price {
    //TODO : nights랑 인원수 같이 세야함.
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

    public int priceForNights(int nights) {
        return pricePerNight * nights;
    }

    public int totalPrice(int nights) {
        return priceForNights(nights) - discountPrice(nights) + cleaningFee(nights) + serviceFee(nights) + accommodationTax(nights);
    }

    public int discountPrice(int nights) {
        return pricePolicies.discountPrice(priceForNights(nights));
    }

    public int cleaningFee(int nights) {
        return pricePolicies.cleaningFee(priceForNights(nights));
    }

    public int serviceFee(int nights) {
        return pricePolicies.serviceFee(priceForNights(nights));
    }

    public int accommodationTax(int nights) {
        return pricePolicies.accommodationTax(priceForNights(nights));
    }
}
