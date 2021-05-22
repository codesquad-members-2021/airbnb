package com.codesquad.airbnb.accommodation.controller;

import com.codesquad.airbnb.accommodation.service.AccommodationService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.List;

@RestController
public class AccommodationController {

    private AccommodationService accommodationService;

    public AccommodationController(AccommodationService accommodationService) {
        this.accommodationService = accommodationService;
    }

    @GetMapping("/accommodations")
    public List<AccommodationResponseDTO> readAll(@Valid AccommodationRequestDTO accommodationRequestDTO) {
        return accommodationService.readAll(accommodationRequestDTO);
    }
}
