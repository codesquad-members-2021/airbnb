package airbnb.service;

import airbnb.domain.Booking;
import airbnb.domain.Room;
import airbnb.domain.User;
import airbnb.exception.BookingNotFoundException;
import airbnb.repository.BookingRepository;
import airbnb.request.BookingRequest;
import airbnb.response.BookingResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class BookingService {
    private final BookingRepository bookingRepository;
    private final UserService userService;
    private final RoomService roomService;

    public Booking findBookingById(Long bookingId) {
        return bookingRepository.findById(bookingId).orElseThrow(BookingNotFoundException::new);
    }

    public BookingResponse reserve(User githubUser, Long roomId, BookingRequest reservationInfo) {
        Room room = roomService.findRoomById(roomId);
        User user = userService.findUserByGithubId(githubUser.getGithubId());
        Booking booking = room.createBooking(user, reservationInfo);
        bookingRepository.save(booking);
        return booking.createBookingResponse();
    }

    public void cancel(Long bookingId) {
        bookingRepository.deleteById(bookingId);
    }

    public List<BookingResponse> getBookingList(User githubUser) {
        User user =  userService.findUserByGithubId(githubUser.getGithubId());
        return user.getBookings().stream().map(Booking::createBookingResponse).collect(Collectors.toList());
    }
}
