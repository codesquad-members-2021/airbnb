package com.codesquad.airbnb.dao;

import com.codesquad.airbnb.domain.Reservation;
import com.codesquad.airbnb.dto.ReservationDetailDTO;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.List;

import static org.assertj.core.api.Assertions.*;

@SpringBootTest
@Transactional
class ReservationDAOTest {

    @Autowired
    ReservationDAO reservationDAO;

    @Test
    void reservationDAO_insertTest() {
        Reservation reservation = new Reservation(1L, LocalDate.of(2021, 9, 13),
                LocalDate.of(2021, 9, 20),
                200000, 4, 1L, 1L);

        assertThat(reservationDAO.insertReservation(reservation)).isEqualTo(1);
    }

    @Test
    void reservationDAO_findByIdTest() {
        Reservation reservation = reservationDAO.findReservationById(1L);

        assertThat(reservation).isNotNull();
        assertThat(reservation.getId()).isEqualTo(1L);
    }

    @Test
    void setReservationDAO_findByUserIdTest() {
        List<Reservation> reservation = reservationDAO.findAllReservationsByUserId(1L);

        assertThat(reservation.get(0).getUserId()).isEqualTo(1L);
    }

    @Test
    void reservationDAO_findDetailedReservationTest() {
        ReservationDetailDTO reservationDetailDTO = reservationDAO.findDetailedReservation(1L);

        assertThat(reservationDetailDTO.getHostName()).isEqualTo("새리");
        assertThat(reservationDetailDTO.getGuestCount()).isEqualTo(4);
    }
}
