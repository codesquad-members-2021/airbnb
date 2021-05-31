package com.team19.airbnb.service;

import com.team19.airbnb.domain.Booking.Booking;
import com.team19.airbnb.domain.User;
import com.team19.airbnb.domain.room.Room;
import com.team19.airbnb.dto.BookingRequestDTO;
import com.team19.airbnb.dto.BookingResponseDTO;
import com.team19.airbnb.exception.notauthorized.NotAuthorizedException;
import com.team19.airbnb.exception.notfound.BookingNotFoundException;
import com.team19.airbnb.repository.BookingDAO;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class BookingService {

    private final BookingDAO bookingDAO;
    private final UserService userService;
    private final RoomService roomService; 

    public BookingService(BookingDAO bookingDAO, 
                          UserService userService, 
                          RoomService roomService) {
        this.bookingDAO = bookingDAO;
        this.userService = userService;
        this.roomService = roomService; 
    }

    public BookingResponseDTO showBooking(Long userId, Long bookingId) {
        User user = userService.findUserById(userId);
        Booking booking = bookingDAO.findById(bookingId).orElseThrow(BookingNotFoundException::new);
        return toResponseDTO(booking);
    }

    public List<BookingResponseDTO> showBookings(Long userId) {
        User user = userService.findUserById(userId);
        return bookingDAO.findAllByUser(userId).stream()
                .map(this::toResponseDTO)
                .collect(Collectors.toList());
    }

    public void book(BookingRequestDTO bookingRequestDTO, Long userId) {
        User user = userService.findUserById(userId);
        Booking booking = bookingRequestDTO.toEntity();
        booking.checkUserId(userId);
        bookingDAO.save(booking);
    }

    public void cancelBooking(Long bookingId, Long userId) {
        User user = userService.findUserById(userId);
        Booking booking = bookingDAO.findById(bookingId).orElseThrow(BookingNotFoundException::new);
        if(!booking.isUser(userId)) {
           throw new NotAuthorizedException("해당 예약을 삭제할 수 있는 권한이 없습니다");
        }
        bookingDAO.delete(bookingId);
    }

    private BookingResponseDTO toResponseDTO(Booking booking) {
        Room room = roomService.findRoomById(booking.getRoom());
        return BookingResponseDTO.create(booking, room);
    }
}
