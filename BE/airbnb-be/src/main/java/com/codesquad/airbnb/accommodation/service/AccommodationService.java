package com.codesquad.airbnb.accommodation.service;

import com.codesquad.airbnb.accommodation.controller.AccommodationRequestDTO;
import com.codesquad.airbnb.accommodation.controller.AccommodationResponseDTO;
import com.codesquad.airbnb.common.utils.DummyDataFactory;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccommodationService {
    public List<AccommodationResponseDTO> readAll(AccommodationRequestDTO accommodationRequestDTO) {
        return DummyDataFactory.accommodationResponseDTOsWithId();
    }
}
