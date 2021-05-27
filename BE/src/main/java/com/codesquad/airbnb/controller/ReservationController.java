package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.dao.ReservationDAO;
import com.codesquad.airbnb.dto.ReservationDetailDTO;
import com.codesquad.airbnb.dto.ReservationRequestDTO;
import com.codesquad.airbnb.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
}
