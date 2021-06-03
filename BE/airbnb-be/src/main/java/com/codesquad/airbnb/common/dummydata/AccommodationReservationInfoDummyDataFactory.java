package com.codesquad.airbnb.common.dummydata;

import com.codesquad.airbnb.accommodation.controller.AccommodationReservationInfo;

public class AccommodationReservationInfoDummyDataFactory {
    private AccommodationReservationInfoDummyDataFactory(){}

    public static AccommodationReservationInfo suiteRoomOnePersonOneDay() {
        return AccommodationReservationInfo.builder()
                       .id(1L)
                       .pricePerNight(400000)
                       .priceForNights(400000)
                       .discountPrice(16000)
                       .cleaningFee(20000)
                       .serviceFee(40000)
                       .accommodationTax(20000)
                       .totalPrice(464000)
                       .reviewCounts(5)
                       .build();
    }

    public static AccommodationReservationInfo suiteRoomOnePersonTwoDays() {
        return AccommodationReservationInfo.builder()
                       .id(1L)
                       .pricePerNight(400000)
                       .priceForNights(800000)
                       .discountPrice(32000)
                       .cleaningFee(40000)
                       .serviceFee(80000)
                       .accommodationTax(40000)
                       .totalPrice(928000)
                       .reviewCounts(5)
                       .build();
    }

    public static AccommodationReservationInfo suiteRoomOnePersonTwoDaysOnWeekend() {
        return AccommodationReservationInfo.builder()
                       .id(1L)
                       .pricePerNight(400000)
                       .priceForNights(800000)
                       .discountPrice(0)
                       .cleaningFee(40000)
                       .serviceFee(80000)
                       .accommodationTax(40000)
                       .totalPrice(960000)
                       .reviewCounts(5)
                       .build();
    }
}
