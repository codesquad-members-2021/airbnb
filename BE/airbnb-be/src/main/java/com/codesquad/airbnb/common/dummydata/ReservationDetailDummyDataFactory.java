package com.codesquad.airbnb.common.dummydata;

import com.codesquad.airbnb.reservation.domain.ReservationDetail;

import java.time.LocalDate;

public class ReservationDetailDummyDataFactory {
    private ReservationDetailDummyDataFactory(){}

    public static ReservationDetail oneNightOnWeekday() {
        return ReservationDetail.builder()
                       .checkinDate(LocalDate.of(2021, 6, 1))
                       .checkoutDate(LocalDate.of(2021, 6, 2))
                       .build();
    }

    public static ReservationDetail twoNightsOnWeekday() {
        return ReservationDetail.builder()
                       .checkinDate(LocalDate.of(2021, 6, 1))
                       .checkoutDate(LocalDate.of(2021, 6, 3))
                       .build();
    }

    public static ReservationDetail twoNightsOnWeekend() {
        return ReservationDetail.builder()
                       .checkinDate(LocalDate.of(2021, 6, 4))
                       .checkoutDate(LocalDate.of(2021, 6, 6))
                       .build();
    }
}
