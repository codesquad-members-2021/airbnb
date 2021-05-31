package com.codesquad.airbnb.accommodation.domain.price;

public class DiscountPolicy implements PricePolicy {
    private static final int DEFAULT_DISCOUNT_PERCENT = 4;

    private int discountPercent;

    public DiscountPolicy(int discountPercent) {
        this.discountPercent = discountPercent;
    }

    public static DiscountPolicy defaultDiscountPolicy() {
        return new DiscountPolicy(DEFAULT_DISCOUNT_PERCENT);
    }

    @Override
    public boolean isDiscount() {
        return true;
    }

    @Override
    public int calculate(int priceForNights) {
        return PriceUtils.calculatePercent(priceForNights, discountPercent);
    }
}
