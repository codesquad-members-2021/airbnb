package mj.airbnb.web;

import mj.airbnb.domain.reservation.Reservation;
import mj.airbnb.service.ReservationService;
import mj.airbnb.web.dto.ReservationResponseDto;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/reservations")
public class ReservationController {

    private final ReservationService reservationService;

    public ReservationController(ReservationService reservationService) {
        this.reservationService = reservationService;
    }

    @GetMapping
    public List<ReservationResponseDto> viewReservation(@RequestParam Long userId) {
        return reservationService.findById(userId);
    }
}
