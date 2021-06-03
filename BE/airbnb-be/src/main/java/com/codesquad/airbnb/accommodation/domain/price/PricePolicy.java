package com.codesquad.airbnb.accommodation.domain.price;

import com.codesquad.airbnb.reservation.domain.ReservationDetail;

public interface PricePolicy {
    default boolean isDiscount() {
        return false;
    }

    default boolean isCleaningFee() {
        return false;
    }

    default boolean getServiceFeePercent() {
        return false;
    }

    default boolean isAccommodationTax() {
        return false;
    }

    default int priceForNights(ReservationDetail reservationDetail, int pricePerNight) {
        return pricePerNight * reservationDetail.getCheckinDate().until(reservationDetail.getCheckoutDate()).getDays();
    }

    int calculate(ReservationDetail reservationDetail, int pricePerNight);
}
