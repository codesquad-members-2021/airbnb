package airbnb.controller;

import airbnb.auth.annotation.Github;
import airbnb.auth.annotation.LoginRequired;
import airbnb.domain.Booking;
import airbnb.domain.Room;
import airbnb.domain.User;
import airbnb.request.BookingRequest;
import airbnb.response.BookingResponse;
import airbnb.response.Status;
import airbnb.service.BookingService;
import airbnb.service.RoomService;
import airbnb.service.UserService;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class BookingController {
    private static final Logger logger = LoggerFactory.getLogger(BookingController.class);
    private final RoomService roomService;
    private final BookingService bookingService;

    @LoginRequired
    @PostMapping("/book/rooms/{roomId}")
    public BookingResponse reserve(@PathVariable Long roomId, @RequestBody BookingRequest reservationInfo, @Github User user) {
        Room room = roomService.findRoomById(roomId);
        return bookingService.reserve(user, room, reservationInfo);
    }

    @LoginRequired
    @DeleteMapping("/cancel/bookings/{bookingId}")
    public Status cancel(@PathVariable Long bookingId, @Github User user) {
        bookingService.cancel(bookingId);
        return Status.SUCCESS;
    }

    @LoginRequired
    @GetMapping("/bookings")
    public List<BookingResponse> viewBookingList(@Github User user) {
        return bookingService.getBookingList(user);
    }
}
