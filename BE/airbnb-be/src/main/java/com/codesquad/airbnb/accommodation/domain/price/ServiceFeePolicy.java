package com.codesquad.airbnb.accommodation.domain.price;

import com.codesquad.airbnb.reservation.domain.ReservationDetail;

public class ServiceFeePolicy implements PricePolicy {
    private static final int DEFAULT_SERVICE_FEE_PERCENT = 10;

    private int serviceFeePercent;

    public ServiceFeePolicy(int serviceFeePercent) {
        this.serviceFeePercent = serviceFeePercent;
    }

    public static ServiceFeePolicy defaultServiceFeePolicy() {
        return new ServiceFeePolicy(DEFAULT_SERVICE_FEE_PERCENT);
    }

    @Override
    public boolean getServiceFeePercent() {
        return true;
    }

    @Override
    public int calculate(ReservationDetail reservationDetail, int pricePerNight) {
        return PriceUtils.calculatePercent(priceForNights(reservationDetail, pricePerNight), serviceFeePercent);
    }
}
