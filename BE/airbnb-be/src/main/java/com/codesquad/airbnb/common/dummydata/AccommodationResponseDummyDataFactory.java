package com.codesquad.airbnb.common.dummydata;

import com.codesquad.airbnb.accommodation.controller.AccommodationResponse;

import java.util.List;
import java.util.stream.Collectors;

public class AccommodationResponseDummyDataFactory {
    private AccommodationResponseDummyDataFactory() {
    }

    public static List<AccommodationResponse> listWithOneNight() {
        return AccommodationDummyDataFactory.list().stream()
                       .map(accommodation -> AccommodationResponse.of(accommodation, ReservationDetailDummyDataFactory.oneNightOnWeekday()))
                       .collect(Collectors.toList());
    }

    public static List<AccommodationResponse> listWithIdTypeOneNight() {
        return AccommodationDummyDataFactory.listWithId().stream()
                       .map(accommodation -> AccommodationResponse.of(accommodation, ReservationDetailDummyDataFactory.oneNightOnWeekday()))
                       .collect(Collectors.toList());
    }

    public static List<AccommodationResponse> listWithIdTypeTwoNights() {
        return AccommodationDummyDataFactory.listWithId().stream()
                       .map(accommodation -> AccommodationResponse.of(accommodation, ReservationDetailDummyDataFactory.twoNightsOnWeekday()))
                       .collect(Collectors.toList());
    }

    public static List<AccommodationResponse> listWithIdTypeTwoNightsOnWeekend() {
        return AccommodationDummyDataFactory.listWithId().stream()
                       .map(accommodation -> AccommodationResponse.of(accommodation, ReservationDetailDummyDataFactory.twoNightsOnWeekend()))
                       .collect(Collectors.toList());
    }
}
