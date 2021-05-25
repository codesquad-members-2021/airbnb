package com.team19.airbnb.service;

import com.team19.airbnb.domain.Booking;
import com.team19.airbnb.domain.User;
import com.team19.airbnb.domain.room.Room;
import com.team19.airbnb.dto.BookingResponseDTO;
import com.team19.airbnb.exception.BookingNotFoundException;
import com.team19.airbnb.exception.RoomNotFoundException;
import com.team19.airbnb.exception.UserNotFoundException;
import com.team19.airbnb.repository.BookingDAO;
import com.team19.airbnb.repository.RoomRepository;
import com.team19.airbnb.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class BookingService {

    private final BookingDAO bookingDAO;
    private final UserRepository userRepository;
    private final RoomRepository roomRepository;

    public BookingService(BookingDAO bookingDAO, UserRepository userRepository, RoomRepository roomRepository) {
        this.bookingDAO = bookingDAO;
        this.userRepository = userRepository;
        this.roomRepository = roomRepository;
    }

    public BookingResponseDTO showBooking(Long userId, Long bookingId) {
        //userService를 참조할지 userRepository를 참조할지 고민 (삭제할 부분이라 repository 참조)
        //OAuth 구현식 삭제될 user 체크
        User user = userRepository.findById(userId).orElseThrow(UserNotFoundException::new);

        Booking booking = bookingDAO.findById(bookingId).orElseThrow(BookingNotFoundException::new);
        return toResponseDTO(booking);
    }

    public List<BookingResponseDTO> showBookings(Long userId) {
        //OAuth 구현식 삭제될 user 체크
        User user = userRepository.findById(userId).orElseThrow(UserNotFoundException::new);

        return bookingDAO.findAllByUser(userId).stream()
                .map(this::toResponseDTO)
                .collect(Collectors.toList());
    }

    private BookingResponseDTO toResponseDTO(Booking booking) {
        Room room = roomRepository.findById(booking.getRoom()).orElseThrow(RoomNotFoundException::new);
        return new BookingResponseDTO.Builder(booking, room).build();
    }
}
