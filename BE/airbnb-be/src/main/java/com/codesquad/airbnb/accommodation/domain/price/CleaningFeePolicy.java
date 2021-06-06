package com.codesquad.airbnb.accommodation.domain.price;

import com.codesquad.airbnb.reservation.domain.ReservationDetail;

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
    public int calculate(ReservationDetail reservationDetail, int pricePerNight) {
                 return PriceUtils.calculatePercent(priceForNights(reservationDetail, pricePerNight), cleaningFeePercent);

    }
}
