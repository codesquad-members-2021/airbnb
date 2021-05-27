package com.team19.airbnb.controller;

import com.team19.airbnb.ResponseBody;
import com.team19.airbnb.dto.BookingRequestDTO;
import com.team19.airbnb.dto.BookingResponseDTO;
import com.team19.airbnb.service.BookingService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("/bookings")
@RestController
public class BookingController {

    private final BookingService bookingService;

    public BookingController(BookingService bookingService) {
        this.bookingService = bookingService;
    }

    //날짜 확인하는 부분 추가 필요
    @PostMapping("/{userId}")
    public void book(@RequestBody BookingRequestDTO bookingRequestDTO) {
        System.out.println(bookingRequestDTO.toString());
    }

    @GetMapping("/{userId}")
    public ResponseBody<List<BookingResponseDTO>> showBookings(@PathVariable Long userId) {
        return ResponseBody.ok(bookingService.showBookings(userId));
    }

    @GetMapping("/{bookingId}/{userId}")
    public ResponseBody<BookingResponseDTO> showBooking(@PathVariable Long bookingId, @PathVariable Long userId) {
        return ResponseBody.ok(bookingService.showBooking(userId, bookingId));
    }

    @DeleteMapping("/{bookingId}/{userId}")
    public void deleteBooking(@PathVariable Long bookingId, @PathVariable Long userId) {
        bookingService.delete(bookingId, userId);
    }
}
