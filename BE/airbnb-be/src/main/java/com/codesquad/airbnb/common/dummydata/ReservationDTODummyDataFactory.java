package com.codesquad.airbnb.common.dummydata;

import com.codesquad.airbnb.accommodation.controller.AccommodationResponse;
import com.codesquad.airbnb.reservation.controller.ReservationDTO;

import java.util.Arrays;
import java.util.List;

public class ReservationDTODummyDataFactory {
    private ReservationDTODummyDataFactory(){}

    public static List<ReservationDTO> list() {
        return Arrays.asList(create(), create());
    }

    public static ReservationDTO create() {
        return new ReservationDTO(1L, AccommodationResponse.from(AccommodationDummyDataFactory.builderWithSuiteRoom().build()));
    }
}
