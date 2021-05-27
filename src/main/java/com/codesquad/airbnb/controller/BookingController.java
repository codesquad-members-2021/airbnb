package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.domain.Booking;
import com.codesquad.airbnb.dto.BookingRequest;
import com.codesquad.airbnb.repository.BookingRepository;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/booking")
public class BookingController {

    private final BookingRepository bookingRepository;

    public BookingController(BookingRepository bookingRepository) {
        this.bookingRepository = bookingRepository;
    }

    @PostMapping
    public void booking(BookingRequest bookingRequest) {
        Booking booking = bookingRequest.toBooking();

    }

    @DeleteMapping
    public void cancelBooking() {

    }
}
