package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.dto.BookingRequest;
import com.codesquad.airbnb.service.BookingService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/booking")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class BookingController {

    private final BookingService bookingService;

    public BookingController(BookingService bookingService) {
        this.bookingService = bookingService;
    }

    @PostMapping
    public void bookRoom(@RequestBody BookingRequest bookingRequest) {
        System.out.println(bookingRequest.toString());
        bookingService.saveBooking(bookingRequest);
    }

    @DeleteMapping("/{bookingId}")
    public void cancelBooking(@PathVariable("bookingId") Long bookingId) {
        bookingService.deleteBooking(bookingId);
    }
}
