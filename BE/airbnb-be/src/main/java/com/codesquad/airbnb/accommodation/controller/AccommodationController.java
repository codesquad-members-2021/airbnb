package com.codesquad.airbnb.accommodation.controller;

import com.codesquad.airbnb.accommodation.service.AccommodationService;
import com.codesquad.airbnb.common.dummydata.AccommodationPriceStatsDummyDataFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
    public List<AccommodationResponse> readAll(@Valid AccommodationRequest accommodationRequest) {
        return accommodationService.readAll(accommodationRequest);
    }

    @GetMapping("/accommodations/{id}")
    public AccommodationDetailResponse readOne(@PathVariable long id) {
        return accommodationService.readOne(id);
    }

    @GetMapping("/accommodationPriceStats")
    public List<AccommodationPriceStats> priceStats() {
        return AccommodationPriceStatsDummyDataFactory.list();
    }

    @GetMapping("/accommodations/{id}/reservation")
    public AccommodationReservationInfo reservationRequestInfo(@PathVariable long id, @Valid AccommodationRequest accommodationRequest) {
        return accommodationService.accommodationReservationInfo(id, accommodationRequest);
    }
}
