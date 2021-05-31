package airbnb.controller;

import airbnb.domain.Room;
import airbnb.domain.User;
import airbnb.request.BookingRequest;
import airbnb.response.BookingResponse;
import airbnb.service.BookingService;
import airbnb.service.RoomService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class BookingController {
    private final RoomService roomService;
    private final BookingService bookingService;

    @PostMapping("/book/rooms/{roomId}")
    public ResponseEntity<BookingResponse> reserve(@PathVariable Long roomId, @RequestBody BookingRequest reservationInfo) {
        User user = new User();
        Room room = roomService.findRoomById(roomId);
        BookingResponse bookingResponse = bookingService.reserve(user, room, reservationInfo);
        return ResponseEntity.ok(bookingResponse);
    }

    @DeleteMapping("/cancel/bookings/{bookingId}")
    public ResponseEntity<String> cancel(@PathVariable Long bookingId) {
        bookingService.cancel(bookingId);
        return ResponseEntity.ok("예약이 성공적으로 취소되었습니다.");
    }
}
