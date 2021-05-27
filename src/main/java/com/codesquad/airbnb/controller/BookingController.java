package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.domain.Booking;
import com.codesquad.airbnb.dto.BookingRequest;
import com.codesquad.airbnb.exception.BookingNotAvailableException;
import com.codesquad.airbnb.repository.BookingRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/booking")
public class BookingController {

    private final BookingRepository bookingRepository;

    public BookingController(BookingRepository bookingRepository) {
        this.bookingRepository = bookingRepository;
    }

    @PostMapping
    public void booking(@RequestBody BookingRequest bookingRequest) {
        Booking booking = bookingRequest.toBooking();
        // 예약 가능한 room 반환 -> service 에서 이 List가 not empty면 예약 가능, empty면 불가능
        List<Booking> readList = bookingRepository.read(booking);
        if (readList.isEmpty()) {
            throw new BookingNotAvailableException();
        }
        bookingRepository.insert(booking);
    }

    @DeleteMapping
    public void cancelBooking() {

    }
}
