package com.team19.airbnb.controller;

import com.team19.airbnb.dto.BookingRequestDTO;
import com.team19.airbnb.dto.BookingResponseDTO;
import com.team19.airbnb.domain.room.Host;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@RestController
public class BookingController {

    @PostMapping("/bookings/{userId}")
    public void bookRoom(@RequestBody BookingRequestDTO bookingRequestDTO) {
        System.out.println(bookingRequestDTO.toString());
    }

    @GetMapping("/bookings/{userId}")
    public List<BookingResponseDTO> getBookings() {
        List<BookingResponseDTO> bookings = new ArrayList<>();
        bookings.add(createBookingResponseDTO(1L));
        bookings.add(createBookingResponseDTO(2L));
        return bookings;
    }

    @GetMapping("/bookings/{bookingId}/{userId}")
    public BookingResponseDTO getBooking(@PathVariable Long bookingId) {
        return createBookingResponseDTO(bookingId);
    }

    @DeleteMapping("/bookings/{bookingId}/{userId}")
    public void deleteWishList(@PathVariable Long bookingId, @PathVariable Long userId) {
    }

    private BookingResponseDTO createBookingResponseDTO(Long bookingId) {
        LocalDate checkIn = LocalDate.of(2020,3,20);
        LocalDate checkOut = LocalDate.of(2020, 4, 4);
        Long roomId = 1L;
        String roomName = "코드스쿼드";
        String roomType = "원룸";
        List<String> images = new ArrayList<>();
        images.add("image1");
        images.add("image2");
        images.add("image3");
        Host host = Host.create("홍길동", "image");
        int guest = 5;
        BigDecimal totalPrice = new BigDecimal(100000);
        return new BookingResponseDTO(bookingId,
                checkIn, checkOut,
                roomId, roomName, roomType,
                images,
                host,
                guest,
                totalPrice);
    }

}
