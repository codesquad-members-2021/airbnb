package com.team19.airbnb.service;

import com.team19.airbnb.domain.Booking;
import com.team19.airbnb.domain.User;
import com.team19.airbnb.repository.BookingDAO;
import com.team19.airbnb.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class BookingService {

    private final BookingDAO bookingDAO;
    private final UserRepository userRepository;

    public BookingService(BookingDAO bookingDAO, UserRepository userRepository) {
        this.bookingDAO = bookingDAO;
        this.userRepository = userRepository;
    }

    public void findBooking(Long userId, Long bookingId) {
        User user = userRepository.findById(userId).orElseThrow(IllegalStateException::new);
        Booking booking = bookingDAO.findById(bookingId).orElseThrow(IllegalStateException::new);
    }
}
