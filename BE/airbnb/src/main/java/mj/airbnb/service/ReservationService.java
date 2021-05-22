package mj.airbnb.service;

import mj.airbnb.domain.accommodation.AccommodationRepository;
import mj.airbnb.domain.reservation.Reservation;
import mj.airbnb.domain.reservation.ReservationRepository;
import mj.airbnb.web.dto.AccommodationResponseDto;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

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
