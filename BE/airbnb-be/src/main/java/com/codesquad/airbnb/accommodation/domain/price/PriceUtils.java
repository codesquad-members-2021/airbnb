package com.codesquad.airbnb.accommodation.domain.price;

public class PriceUtils {
    private PriceUtils() {
    }

    public static int calculatePercent(int target, int percent) {
        return Math.toIntExact(Math.round(target * percent / 100));
    }
}
