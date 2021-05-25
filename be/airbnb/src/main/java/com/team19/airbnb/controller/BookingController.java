package com.team19.airbnb.controller;

import com.team19.airbnb.ResponseBody;
import com.team19.airbnb.domain.room.Host;
import com.team19.airbnb.dto.BookingRequestDTO;
import com.team19.airbnb.dto.BookingResponseDTO;
import com.team19.airbnb.service.BookingService;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@RestController
public class BookingController {

    private final BookingService bookingService;

    public BookingController(BookingService bookingService) {
        this.bookingService = bookingService;
    }

    @PostMapping("/bookings/{userId}")
    public void bookRoom(@RequestBody BookingRequestDTO bookingRequestDTO) {
        System.out.println(bookingRequestDTO.toString());
    }

    @GetMapping("/bookings/{userId}")
    public List<BookingResponseDTO> getBookings() {
        return null;
    }

    @GetMapping("/bookings/{bookingId}/{userId}")
    public ResponseBody<BookingResponseDTO> getBooking(@PathVariable Long bookingId, @PathVariable Long userId) {
        return ResponseBody.ok(bookingService.findBooking(userId, bookingId));
    }

    @DeleteMapping("/bookings/{bookingId}/{userId}")
    public void deleteWishList(@PathVariable Long bookingId, @PathVariable Long userId) {
    }
}
