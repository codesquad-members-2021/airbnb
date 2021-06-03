package airbnb.service;

import airbnb.domain.Booking;
import airbnb.domain.Room;
import airbnb.domain.User;
import airbnb.domain.Wish;
import airbnb.exception.BookingNotFoundException;
import airbnb.repository.BookingRepository;
import airbnb.repository.UserRepository;
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

    public Booking findBookingById(Long bookingId) {
        return bookingRepository.findById(bookingId).orElseThrow(BookingNotFoundException::new);
    }

    public BookingResponse reserve(User githubUser, Room room, BookingRequest reservationInfo) {
        User user = userService.findUserByGithubId(githubUser.getGithubId());
        Booking booking = Room.createBooking(user, room, reservationInfo);
        bookingRepository.save(booking);
        return Booking.createBookingResponse(booking);
    }

    public void cancel(Long bookingId) {
        bookingRepository.deleteById(bookingId);
    }

    public List<BookingResponse> getBookingList(User githubUser) {
        User user =  userService.findUserByGithubId(githubUser.getGithubId());
        return user.getBookings().stream().map(Booking::createBookingResponse).collect(Collectors.toList());
    }
}
