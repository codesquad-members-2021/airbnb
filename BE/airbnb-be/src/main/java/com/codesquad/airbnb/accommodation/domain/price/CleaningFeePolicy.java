package com.codesquad.airbnb.accommodation.domain.price;

public class CleaningFeePolicy implements PricePolicy {
    private static final int DEFAULT_CLEANING_FEE_PERCENT = 5;

    private int cleaningFeePercent;

    public CleaningFeePolicy(int cleaningFeePercent) {
        this.cleaningFeePercent = cleaningFeePercent;
    }

    public static CleaningFeePolicy defaultCleaningFeePolicy() {
        return new CleaningFeePolicy(DEFAULT_CLEANING_FEE_PERCENT);
    }

    @Override
    public boolean isCleaningFee() {
        return true;
    }

    @Override
    public int calculate(int priceForNights) {
        return PriceUtils.calculatePercent(priceForNights, cleaningFeePercent);
    }
}
