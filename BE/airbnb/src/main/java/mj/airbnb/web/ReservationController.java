package mj.airbnb.web;

import mj.airbnb.oauth.GitHubUser;
import mj.airbnb.oauth.LoginController;
import mj.airbnb.service.ReservationService;
import mj.airbnb.web.dto.CreatingReservationRequestDto;
import mj.airbnb.web.dto.CreatingReservationResponseDto;
import mj.airbnb.web.dto.ReservationResponseDto;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/reservations")
public class ReservationController {

    private final ReservationService reservationService;
    private final Logger logger = LoggerFactory.getLogger(ReservationController.class);

    public ReservationController(ReservationService reservationService) {
        this.reservationService = reservationService;
    }

    @GetMapping
    public List<ReservationResponseDto> viewReservation(@RequestAttribute GitHubUser user) {
        return reservationService.findByUserId(user.getId());
    }

    @PostMapping
    public CreatingReservationResponseDto createReservation(@RequestBody CreatingReservationRequestDto requestDto, @RequestAttribute GitHubUser user) {
        requestDto.setUserId(user.getId());

        return reservationService.createReservation(requestDto);
    }
}
