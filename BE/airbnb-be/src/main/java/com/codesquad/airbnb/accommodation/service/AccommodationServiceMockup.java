package com.codesquad.airbnb.accommodation.service;

import com.codesquad.airbnb.accommodation.controller.AccommodationRequestDTO;
import com.codesquad.airbnb.accommodation.controller.AccommodationResponseDTO;
import com.codesquad.airbnb.common.utils.DummyDataFactory;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Profile("mockup")
public class AccommodationServiceMockup implements AccommodationService{
    public List<AccommodationResponseDTO> readAll(AccommodationRequestDTO accommodationRequestDTO) {
        List<AccommodationResponseDTO> result = DummyDataFactory.accommodationResponseDTOsWithId();

        if (accommodationRequestDTO.getStartPrice() != null) {
            result = result.stream()
                             .filter(accommodationResponseDTO -> accommodationRequestDTO.getStartPrice() <= accommodationResponseDTO.pricePerNight())
                             .collect(Collectors.toList());
        }

        if (accommodationRequestDTO.getEndPrice() != null) {
            result = result.stream()
                             .filter(accommodationResponseDTO -> accommodationResponseDTO.pricePerNight() <= accommodationRequestDTO.getEndPrice())
                             .collect(Collectors.toList());
        }

        return result;
    }
}
