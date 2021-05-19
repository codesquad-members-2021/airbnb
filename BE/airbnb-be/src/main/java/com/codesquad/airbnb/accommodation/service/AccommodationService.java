package com.codesquad.airbnb.accommodation.service;

import com.codesquad.airbnb.accommodation.controller.AccommodationResponseDTO;
import com.codesquad.airbnb.utils.DummyDataFactory;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccommodationService {
    public List<AccommodationResponseDTO> readAll() {
        return DummyDataFactory.accommodationResponseDTOsWithId();
    }
}
