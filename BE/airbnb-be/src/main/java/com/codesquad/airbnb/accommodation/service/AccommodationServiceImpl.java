package com.codesquad.airbnb.accommodation.service;

import com.codesquad.airbnb.accommodation.controller.AccommodationRequestDTO;
import com.codesquad.airbnb.accommodation.controller.AccommodationResponseDTO;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Profile("default")
public class AccommodationServiceImpl implements AccommodationService{
    @Override
    public List<AccommodationResponseDTO> readAll(AccommodationRequestDTO accommodationRequestDTO) {
        return null;
    }
}
