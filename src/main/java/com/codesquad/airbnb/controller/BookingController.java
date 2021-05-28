package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.domain.Booking;
import com.codesquad.airbnb.dto.BookingRequest;
import com.codesquad.airbnb.exception.BookingNotAvailableException;
import com.codesquad.airbnb.repository.BookingRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/booking")
public class BookingController {

    private final BookingRepository bookingRepository;

    public BookingController(BookingRepository bookingRepository) {
        this.bookingRepository = bookingRepository;
    }

    @PostMapping
    public void booking(@RequestBody BookingRequest bookingRequest) {
        Booking booking = bookingRequest.toBooking();

        if (!isAvailableBooking(booking)) {
            throw new BookingNotAvailableException();
        }
        bookingRepository.insert(booking);
    }

    private boolean isAvailableBooking(Booking booking) {
        //  i) 예약 내역이 전혀 없는 경우.
        //        - roomId에 해당하는 booking 있는지 조회
        //        - -> 모든 booking에 room이 없으면(hasBooking이 false) true (= 예약 가능)
        //        - -> 모든 booking에 room 하나라도 있는게 확인 되면 아래 작업 진행
        List<Booking> allBooking = bookingRepository.findAll();
        boolean hasBooking = false;
        for (Booking oneBooking : allBooking) {
            if (oneBooking.hasRoom(booking.getRoomId())) {
                hasBooking = true;
                break;
            }
        }
        if (!hasBooking) {
            System.out.println("예약 가능 - 이 방에 한 번도 예약된 적이 없어요.");
            return true;
        }
        //-- repository에서..
        //    - booking에 room을 join
        //    - ii) 예약이 있다면 그 예약이 ~6/1 전에 끝나야.
        //        - checkOut ?
        //    - iii) 예약이 있다면 그 예약이 6/3~ 이후에 시작해야.
        //        - checkIn (not between 아님)
        //
        //-- controller에서..
        //    -> 날짜 겹침 -> List not empty -> "false" (= 예약 불가능)
        //    -> 날짜 겹치지 않음 -> List empty -> "true" (= 예약 가능)
        List<Booking> filteredBooking = bookingRepository.findFilteredBooking(booking);
        if (!filteredBooking.isEmpty()) {
            System.out.println("예약 불가능 - 다른 사람과 예약이 겹쳐요.");
            return false;
        }
        System.out.println("예약 가능");
        return true;
    }

    @DeleteMapping
    public void cancelBooking() {

    }
}
