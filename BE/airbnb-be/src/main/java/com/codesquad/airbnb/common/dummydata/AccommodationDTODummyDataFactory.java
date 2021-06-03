package com.codesquad.airbnb.common.dummydata;

import com.codesquad.airbnb.accommodation.controller.AccommodationDetailResponse;

import java.util.List;
import java.util.stream.Collectors;

public class AccommodationDTODummyDataFactory {
    private AccommodationDTODummyDataFactory(){}

    public static List<AccommodationDetailResponse> listWithId() {
        return AccommodationDummyDataFactory.listWithId().stream()
                       .map(AccommodationDetailResponse::from)
                       .collect(Collectors.toList());
    }
}
