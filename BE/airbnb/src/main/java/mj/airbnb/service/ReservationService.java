package mj.airbnb.service;

import mj.airbnb.domain.reservation.Reservation;
import mj.airbnb.domain.reservation.ReservationRepository;
import org.springframework.stereotype.Service;

@Service
public class ReservationService {

    private final ReservationRepository reservationRepository;

    public ReservationService(ReservationRepository reservationRepository) {
        this.reservationRepository = reservationRepository;
    }

    public Reservation findById(Long id) {
        return reservationRepository.findById(id);
    }
}
