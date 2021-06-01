package mj.airbnb.web;

import mj.airbnb.oauth.GitHubUser;
import mj.airbnb.service.ReservationService;
import mj.airbnb.web.dto.CreatingReservationRequestDto;
import mj.airbnb.web.dto.CreatingReservationResponseDto;
import mj.airbnb.web.dto.ReservationResponseDto;
import org.springframework.http.HttpStatus;
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
    public List<ReservationResponseDto> viewReservation(@RequestAttribute GitHubUser user) {
        return reservationService.findByUserId(user.getId());
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public CreatingReservationResponseDto createReservation(@RequestBody CreatingReservationRequestDto requestDto, @RequestAttribute GitHubUser user) {
        requestDto.setUserId(user.getId());

        return reservationService.createReservation(requestDto);
    }

    @DeleteMapping("/{reservationId}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteReservation(@PathVariable Long reservationId) {
        reservationService.deleteReservation(reservationId);
    }
}
