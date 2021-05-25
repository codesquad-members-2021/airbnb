package com.team19.airbnb.service;

import com.team19.airbnb.domain.Booking;
import com.team19.airbnb.domain.User;
import com.team19.airbnb.repository.BookingDAO;
import com.team19.airbnb.repository.UserRepository;
import org.springframework.stereotype.Service;

import com.team19.airbnb.dto.BookingRequestDTO;
import com.team19.airbnb.repository.UserDAO;
import org.springframework.web.bind.annotation.RequestBody;

@Service
public class BookingService {

    private final BookingDAO bookingDAO;
    private final UserRepository userRepository;
    private final UserDAO userDAO;

    public BookingService(BookingDAO bookingDAO, UserRepository userRepository, UserDAO userDAO) {
        this.bookingDAO = bookingDAO;
        this.userRepository = userRepository;
        this.userDAO = userDAO;
    }

    public void findBooking(Long userId, Long bookingId) {
        User user = userRepository.findById(userId).orElseThrow(IllegalStateException::new);
        Booking booking = bookingDAO.findById(bookingId).orElseThrow(IllegalStateException::new);
    }

    public void createBooking(@RequestBody BookingRequestDTO bookingRequestDTO, Long userId) {
        Booking booking = bookingRequestDTO.toEntity();
        booking.checkId(userId);
        bookingDAO.bookReservation(booking, userId);
    }

    public void deleteBooking(Long bookingId, Long userId) {
        bookingDAO.deleteReservation(bookingId, userId);
    }
}
