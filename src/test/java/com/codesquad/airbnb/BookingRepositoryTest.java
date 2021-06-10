package com.codesquad.airbnb;

import com.codesquad.airbnb.domain.Booking;
import com.codesquad.airbnb.repository.BookingRepository;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDate;
import java.util.List;
import java.util.NoSuchElementException;

@SpringBootTest
public class BookingRepositoryTest {

    @Autowired
    BookingRepository bookingRepository;

    @Test
    void checkFindById() {
        Booking booking = bookingRepository.findById(1L).orElseThrow(NoSuchElementException::new);
        Assertions.assertThat(booking.getId()).isEqualTo(1L);
    }

    @Test
    void checkFindAll() {
        List<Booking> bookingList = bookingRepository.findAll();
        Assertions.assertThat(bookingList.stream().count()).isEqualTo(2);
    }

    @Test
    void check() {
        Booking newBooking = new Booking(3L, 2L, 1L,
                LocalDate.of(2021, 5, 20),
                LocalDate.of(2021, 5, 23),
                2, 200000);
        bookingRepository.insert(newBooking);
    }
}
