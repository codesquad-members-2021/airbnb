package com.codesquad.airbnb.accommodation.domain.price;

public class ServiceFeePolicy implements PricePolicy {
    private static final int DEFAULT_SERVICE_FEE_PERCENT = 10;

    private int serviceFee;

    public ServiceFeePolicy(int serviceFee) {
        this.serviceFee = serviceFee;
    }

    public static ServiceFeePolicy defaultServiceFeePolicy() {
        return new ServiceFeePolicy(DEFAULT_SERVICE_FEE_PERCENT);
    }

    @Override
    public boolean isServiceFee() {
        return true;
    }

    @Override
    public int calculate(int priceForNights) {
        return PriceUtils.calculatePercent(priceForNights, serviceFee);
    }
}
