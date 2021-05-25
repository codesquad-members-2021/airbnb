package com.team19.airbnb.repository;

import com.team19.airbnb.domain.Booking;
import com.team19.airbnb.domain.User;
import com.team19.airbnb.domain.room.Host;
import com.team19.airbnb.domain.room.Location;
import com.team19.airbnb.domain.room.Room;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;

import static org.assertj.core.api.Assertions.*;

@SpringBootTest
@Transactional
class BookingRepositoryTest {
    private static final Logger logger = LoggerFactory.getLogger(BookingRepositoryTest.class);

    @Autowired
    UserRepository userRepository;

    @Autowired
    BookingDAO bookingDAO;

    @Autowired
    RoomRepository roomRepository;

    @Test
    @DisplayName("booking을 저장한다")
    void saveBooking() {
        //Given
        User user = User.create("github");
        userRepository.save(user);
        Room room = Room.create("room", new ArrayList<>(),
                1.0, 1,
                Location.create("address", 1.0, 1.0),
                new BigDecimal(1000),
                "roomType", "roomConfiguration", "description",
                Host.create("tree", "treeImage"));
        roomRepository.save(room);

        //When
       Booking savedBooking = bookingDAO.save(Booking.create(LocalDate.now(), LocalDate.now(),
                50, BigDecimal.valueOf(1000.0),
                1L, 1L));

        //Then
        logger.debug("SavedBooking : {}", savedBooking);
        assertThat(bookingDAO.findById(1L).get().getGuest()).isEqualTo(50);
    }
}
