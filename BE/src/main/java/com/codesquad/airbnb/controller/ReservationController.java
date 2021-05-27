package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.dto.PriceInfoDTO;
import com.codesquad.airbnb.dto.ReservationDetailDTO;
import com.codesquad.airbnb.dto.ReservationRequestDTO;
import com.codesquad.airbnb.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/reservation")
public class ReservationController {

    private ReservationService reservationService;

    @Autowired
    public ReservationController(ReservationService reservationService) {
        this.reservationService = reservationService;
    }

    @GetMapping("/{reservationId}")
    public ReservationDetailDTO browseDetailedReservationById(@PathVariable Long reservationId) {
        return reservationService.browseReservationDetailById(reservationId);
    }

    @GetMapping
    public PriceInfoDTO browsePriceInfo(@RequestParam Long propertyId, @RequestBody ReservationRequestDTO reservationInfo) {
        return reservationService.browsePriceInfoReservation(propertyId, reservationInfo);
    }

    @PostMapping("/{propertyId}")
    public void createReservation(@PathVariable Long propertyId, @RequestBody ReservationRequestDTO reservationInfo) {
        reservationService.createReservation(propertyId, reservationInfo);
    }
}
