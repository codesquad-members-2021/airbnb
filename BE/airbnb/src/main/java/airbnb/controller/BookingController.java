package airbnb.controller;

import airbnb.auth.annotation.Github;
import airbnb.auth.annotation.LoginRequired;
import airbnb.domain.Room;
import airbnb.domain.User;
import airbnb.request.BookingRequest;
import airbnb.response.BookingResponse;
import airbnb.response.Status;
import airbnb.service.BookingService;
import airbnb.service.RoomService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class BookingController {
    private final RoomService roomService;
    private final BookingService bookingService;

    @LoginRequired
    @PostMapping("/book/rooms/{roomId}")
    public BookingResponse reserve(@PathVariable Long roomId, @RequestBody BookingRequest reservationInfo, @Github User user) {
        return bookingService.reserve(user, roomId, reservationInfo);
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
