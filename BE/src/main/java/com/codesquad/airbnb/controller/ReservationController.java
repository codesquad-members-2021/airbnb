package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.dto.price.PriceInfoDTO;
import com.codesquad.airbnb.dto.reservation.ReservationDetailDTO;
import com.codesquad.airbnb.dto.reservation.ReservationRequestDTO;
import com.codesquad.airbnb.service.ReservationService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/reservation")
public class ReservationController {

    private final ReservationService reservationService;

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
    @ResponseStatus(HttpStatus.CREATED)
    public void createReservation(@PathVariable Long propertyId, @RequestBody ReservationRequestDTO reservationInfo) {
        reservationService.createReservation(propertyId, reservationInfo);
    }
}
