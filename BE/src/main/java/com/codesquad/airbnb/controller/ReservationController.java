package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.dto.price.PriceInfoDTO;
import com.codesquad.airbnb.dto.reservation.ReservationDetailDTO;
import com.codesquad.airbnb.dto.reservation.ReservationRequestDTO;
import com.codesquad.airbnb.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
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
    public ResponseEntity<ReservationDetailDTO> browseDetailedReservationById(@PathVariable Long reservationId) {
        return ResponseEntity.ok().body(reservationService.browseReservationDetailById(reservationId));
    }

    @GetMapping
    public ResponseEntity<PriceInfoDTO> browsePriceInfo(@RequestParam Long propertyId, @RequestBody ReservationRequestDTO reservationInfo) {
        return ResponseEntity.ok().body(reservationService.browsePriceInfoReservation(propertyId, reservationInfo));
    }

    @PostMapping("/{propertyId}")
    public void createReservation(@PathVariable Long propertyId, @RequestBody ReservationRequestDTO reservationInfo) {
        reservationService.createReservation(propertyId, reservationInfo);
    }
}
