package com.codesquad.airbnb.web.service.reservation;

import com.codesquad.airbnb.web.domain.reservation.Reservation;
import com.codesquad.airbnb.web.domain.reservation.ReservationRepository;
import com.codesquad.airbnb.web.dto.UserInput;
import com.codesquad.airbnb.web.exceptions.ReservationFailedException;
import org.springframework.stereotype.Service;

import static com.codesquad.airbnb.web.exceptions.ReservationFailedException.RESERVATION_DATE_DUPLICATED;

@Service
public class ReservationService {

    private final ReservationRepository reservationRepository;

    public ReservationService(ReservationRepository reservationRepository) {
        this.reservationRepository = reservationRepository;
    }

    public void checkReservationable(int roomId, UserInput userInput) {
        boolean result = reservationRepository.isReservationable(roomId, userInput);
        if (!result) {
            throw new ReservationFailedException(RESERVATION_DATE_DUPLICATED);
        }
    }

    public Reservation save(Reservation reservation) {
        return reservationRepository.save(reservation);
    }
}
