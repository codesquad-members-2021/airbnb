package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.domain.Booking;
import com.codesquad.airbnb.dto.BookingRequest;
import com.codesquad.airbnb.exception.BookingNotAvailableException;
import com.codesquad.airbnb.exception.BookingNotFoundException;
import com.codesquad.airbnb.repository.BookingRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/booking")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class BookingController {

    private final BookingRepository bookingRepository;

    public BookingController(BookingRepository bookingRepository) {
        this.bookingRepository = bookingRepository;
    }

    @PostMapping
    public void booking(@RequestBody BookingRequest bookingRequest) {
        Booking booking = bookingRequest.toBooking();

        if (!isAvailableBooking(booking)) {
            throw new BookingNotAvailableException();
        }
        bookingRepository.insert(booking);
    }

    private boolean isAvailableBooking(Booking booking) {
        List<Booking> allBooking = bookingRepository.findAll();
        boolean hasBooking = false;
        for (Booking oneBooking : allBooking) {
            if (oneBooking.hasRoom(booking.getRoomId())) {
                hasBooking = true;
                break;
            }
        }
        if (!hasBooking) {
            System.out.println("예약 가능 - 이 방에 한 번도 예약된 적이 없어요.");
            return true;
        }
        //-- controller에서..
        //    -> 날짜 겹침 -> List not empty -> "false" (= 예약 불가능)
        //    -> 날짜 겹치지 않음 -> List empty -> "true" (= 예약 가능)
        List<Booking> filteredBooking = bookingRepository.findFilteredBooking(booking);
        if (!filteredBooking.isEmpty()) {
            System.out.println("예약 불가능 - 다른 사람과 예약이 겹쳐요.");
            return false;
        }
        System.out.println("예약 가능");
        return true;
    }

    @DeleteMapping("/{bookingId}")
    public void cancelBooking(@PathVariable("bookingId") Long bookingId) {
        if(isBookingExist(bookingId)) {
            bookingRepository.delete(bookingId);
        }
    }

    private boolean isBookingExist(Long bookingId) {
        Booking booking = bookingRepository.findById(bookingId).orElseThrow(BookingNotFoundException::new);
        return booking != null;
    }
}
