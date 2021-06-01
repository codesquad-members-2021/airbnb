package com.codesquad.airbnb.accommodation.domain.price;

import com.codesquad.airbnb.reservation.domain.ReservationDetail;


public class WeekdayDiscountPolicy implements DiscountPolicy {
    private int discountPercent;

    public WeekdayDiscountPolicy(int discountPercent) {
        this.discountPercent = discountPercent;
    }

    @Override
    public int calculate(ReservationDetail reservationDetail, int pricePerNight) {
        Weekdays weekdays = Weekdays.of(reservationDetail.getCheckinDate(), reservationDetail.getCheckoutDate());

        return PriceUtils.calculatePercent(pricePerNight * weekdays.days(), discountPercent);
    }
}
