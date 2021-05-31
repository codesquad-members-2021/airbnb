package com.codesquad.airbnb.accommodation.service;

import com.codesquad.airbnb.accommodation.controller.AccommodationDTO;
import com.codesquad.airbnb.accommodation.controller.AccommodationRequest;
import com.codesquad.airbnb.accommodation.controller.AccommodationReservationInfo;
import com.codesquad.airbnb.accommodation.controller.AccommodationResponse;
import com.codesquad.airbnb.common.exception.NotFoundException;
import com.codesquad.airbnb.common.utils.DummyDataFactory;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Profile("mockup")
public class AccommodationServiceMockup implements AccommodationService {
    public List<AccommodationResponse> readAll(AccommodationRequest accommodationRequest) {
        List<AccommodationResponse> result = DummyDataFactory.accommodationResponseDTOsWithIdTypeOneNight();

        if (accommodationRequest.getStartPrice() != null) {
            result = result.stream()
                             .filter(accommodationResponseDTO -> accommodationRequest.getStartPrice() <= accommodationResponseDTO.pricePerNight())
                             .collect(Collectors.toList());
        }

        if (accommodationRequest.getEndPrice() != null) {
            result = result.stream()
                             .filter(accommodationResponseDTO -> accommodationResponseDTO.pricePerNight() <= accommodationRequest.getEndPrice())
                             .collect(Collectors.toList());
        }

        return result;
    }

    public AccommodationDTO readOne(long id) {
        List<AccommodationDTO> result = DummyDataFactory.accommodationDTOsWithId();

        return result.stream()
                       .filter(accommodationDTO -> accommodationDTO.getId() == id)
                       .findAny()
                       .orElseThrow(() -> new NotFoundException());
    }

    @Override
    public AccommodationReservationInfo accommodationReservationInfo(long id, AccommodationRequest accommodationRequest) {
        return DummyDataFactory.accommodationReservationInfoTypeSuiteRoomOnePersonOneDay();
    }
}
