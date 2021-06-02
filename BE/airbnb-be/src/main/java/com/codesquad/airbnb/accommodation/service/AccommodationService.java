package com.codesquad.airbnb.accommodation.service;

import com.codesquad.airbnb.accommodation.controller.AccommodationRequestDTO;
import com.codesquad.airbnb.accommodation.controller.AccommodationResponseDTO;

import java.util.List;

public interface AccommodationService {
    List<AccommodationResponseDTO> readAll(AccommodationRequestDTO accommodationRequestDTO);
}
