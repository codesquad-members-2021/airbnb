package com.codesquad.airbnb.reservation.controller;

import com.codesquad.airbnb.common.utils.DummyDataFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ReservationController {

    @GetMapping("/users/{userId}/reservations")
    public List<ReservationDTO> readAll(@PathVariable long userId) {
        return DummyDataFactory.reservations();
    }

    @GetMapping("/users/{userId}/reservations/{reservationId}")
    public ReservationDTO readOne(@PathVariable long userId, @PathVariable long reservationId) {
        return DummyDataFactory.reservation();
    }
}
