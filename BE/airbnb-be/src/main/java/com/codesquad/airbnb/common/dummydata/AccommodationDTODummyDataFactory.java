package com.codesquad.airbnb.common.dummydata;

import com.codesquad.airbnb.accommodation.controller.AccommodationDTO;

import java.util.List;
import java.util.stream.Collectors;

public class AccommodationDTODummyDataFactory {
    private AccommodationDTODummyDataFactory(){}

    public static List<AccommodationDTO> listWithId() {
        return AccommodationDummyDataFactory.listWithId().stream()
                       .map(AccommodationDTO::from)
                       .collect(Collectors.toList());
    }
}
