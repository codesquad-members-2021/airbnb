package com.codesquad.airbnb.accommodation.domain.price;

public interface PricePolicy {
    default boolean isDiscount() {
        return false;
    }

    default boolean isCleaningFee() {
        return false;
    }

    default boolean isServiceFee() {
        return false;
    }

    default boolean isAccommodationTax() {
        return false;
    }

    int calculate(int priceForNights);
}
