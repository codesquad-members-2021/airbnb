package com.codesquad.airbnb.accommodation.domain.price;

public interface DiscountPolicy extends PricePolicy {
    int DEFAULT_DISCOUNT_PERCENT = 4;

    static DiscountPolicy defaultDiscountPolicy() {
        return new WeekdayDiscountPolicy(DEFAULT_DISCOUNT_PERCENT);
    }

    @Override
    default boolean isDiscount() {
        return true;
    }
}
