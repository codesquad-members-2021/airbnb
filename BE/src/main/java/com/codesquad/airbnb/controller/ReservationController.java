package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.dao.ReservationDAO;
import com.codesquad.airbnb.dto.ReservationDetailDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/reservation")
public class ReservationController {

    private ReservationDAO reservationDAO;

    @Autowired
    public ReservationController(ReservationDAO reservationDAO) {
        this.reservationDAO = reservationDAO;
    }

    @GetMapping("/{reservationId}")
    public ReservationDetailDTO browseDetailedReservationById(@PathVariable Long reservationId) {
        return reservationDAO.findDetailedReservation(reservationId);
    }
}
