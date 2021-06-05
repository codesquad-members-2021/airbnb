package mj.airbnb.service;

import mj.airbnb.domain.reservation.ReservationRepository;
import mj.airbnb.web.dto.CreatingReservationRequestDto;
import mj.airbnb.web.dto.CreatingReservationResponseDto;
import mj.airbnb.web.dto.ReservationResponseDto;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ReservationService {

    private final ReservationRepository reservationRepository;

    public ReservationService(ReservationRepository reservationRepository) {
        this.reservationRepository = reservationRepository;
    }

    public List<ReservationResponseDto> findByUserId(Long userId) {
        return reservationRepository.findAllByUserId(userId).stream()
                .map(ReservationResponseDto::new)
                .collect(Collectors.toList());
    }

    public CreatingReservationResponseDto createReservation(CreatingReservationRequestDto requestDto) {

        Long reservationId = reservationRepository.saveReservation(requestDto);

        return new CreatingReservationResponseDto(reservationRepository.findById(reservationId));
    }

    public void deleteReservation(Long reservationId) {
        reservationRepository.softDeleteReservation(reservationId);
    }
}
