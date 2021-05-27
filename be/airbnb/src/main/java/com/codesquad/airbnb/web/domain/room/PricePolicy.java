package com.codesquad.airbnb.web.domain.room;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@Getter
@AllArgsConstructor
@Builder
@ToString
public class PricePolicy {
    private int serviceFee;
    private int accomodationTax;
    private int cleanUpCost;
    private int pricePerDay;
    private int weeklyDiscount;

    public int totalPrice(int stayDay) {
        return (int) ((totalPricePerDate() * stayDay) * discountPercentage(stayDay));
    }

    private int totalPricePerDate() {
        return pricePerDay + serviceFee + cleanUpCost;
    }

    private float discountPercentage(int stayDay) {
        return (100 - weeklyDiscount * (int)(stayDay / 7.0f)) / 100.0f;
    }
}
