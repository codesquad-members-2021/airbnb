package com.codesquad.airbnb.accommodation.service;

import com.codesquad.airbnb.accommodation.controller.AccommodationDetailResponse;
import com.codesquad.airbnb.accommodation.controller.AccommodationRequest;
import com.codesquad.airbnb.accommodation.controller.AccommodationReservationInfo;
import com.codesquad.airbnb.accommodation.controller.AccommodationResponse;
import com.codesquad.airbnb.common.dummydata.AccommodationDTODummyDataFactory;
import com.codesquad.airbnb.common.dummydata.AccommodationReservationInfoDummyDataFactory;
import com.codesquad.airbnb.common.dummydata.AccommodationResponseDummyDataFactory;
import com.codesquad.airbnb.common.exception.NotFoundException;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Profile("mockup")
public class AccommodationServiceMockup implements AccommodationService {
    public List<AccommodationResponse> readAll(AccommodationRequest accommodationRequest) {
        List<AccommodationResponse> result = AccommodationResponseDummyDataFactory.listWithIdTypeOneNight();

        if (accommodationRequest.getStartPrice() != null) {
            result = result.stream()
                             .filter(accommodationResponseDTO -> accommodationRequest.getStartPrice() <= accommodationResponseDTO.getPricePerNight())
                             .collect(Collectors.toList());
        }

        if (accommodationRequest.getEndPrice() != null) {
            result = result.stream()
                             .filter(accommodationResponseDTO -> accommodationResponseDTO.getPricePerNight() <= accommodationRequest.getEndPrice())
                             .collect(Collectors.toList());
        }

        return result;
    }

    public AccommodationDetailResponse readOne(long id) {
        List<AccommodationDetailResponse> result = AccommodationDTODummyDataFactory.listWithId();

        return result.stream()
                       .filter(accommodationDTO -> accommodationDTO.getId() == id)
                       .findAny()
                       .orElseThrow(() -> new NotFoundException());
    }

    @Override
    public AccommodationReservationInfo accommodationReservationInfo(long id, AccommodationRequest accommodationRequest) {
        return AccommodationReservationInfoDummyDataFactory.suiteRoomOnePersonOneDay();
    }
}
