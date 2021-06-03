package com.codesquad.airbnb.service;

import com.codesquad.airbnb.domain.Booking;
import com.codesquad.airbnb.dto.BookingRequest;
import com.codesquad.airbnb.exception.BookingNotAvailableException;
import com.codesquad.airbnb.exception.BookingNotFoundException;
import com.codesquad.airbnb.repository.BookingRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BookingService {

    private BookingRepository bookingRepository;

    public BookingService(BookingRepository bookingRepository) {
        this.bookingRepository = bookingRepository;
    }

    public void saveBooking(BookingRequest bookingRequest) {
        Booking booking = bookingRequest.toBooking();
        if (!isAvailableBooking(booking)) {
            throw new BookingNotAvailableException();
        }
        bookingRepository.insert(booking);
    }

    private boolean isAvailableBooking(Booking booking) {
        if (!hasBooking(booking.getRoomId())) {
            return true;
        }
        List<Booking> duplicatedBooking = bookingRepository.findDuplicatedBooking(booking);
        return duplicatedBooking.isEmpty();
    }

    private boolean hasBooking(Long roomId) {
        List<Booking> allBooking = bookingRepository.findAll();
        for (Booking oneBooking : allBooking) {
            if (oneBooking.hasRoom(roomId)) {
                return true;
            }
        }
        return false;
    }

    public void deleteBooking(Long bookingId) {
        if (!isBookingExist(bookingId)) {
            throw new BookingNotFoundException();
        }
        bookingRepository.delete(bookingId);
    }

    private boolean isBookingExist(Long bookingId) {
        Optional<Booking> booking = bookingRepository.findById(bookingId);
        return !booking.equals(Optional.empty());
    }
}
