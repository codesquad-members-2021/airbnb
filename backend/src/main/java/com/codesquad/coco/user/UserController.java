package com.codesquad.coco.user;

import com.codesquad.coco.user.model.dto.ReservationDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
public class UserController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/rooms/{roomId}/reservations")
    public void reservation(@PathVariable Long roomId, @Valid @RequestBody ReservationDTO reservationDTO) {
        //todo userId를 얻어서 같이 줘야함 일단 ID가 1인 유저
        logger.debug(reservationDTO.toString());
        userService.reservation(roomId, 1L, reservationDTO);
    }

    @DeleteMapping("/rooms/{roomId}/reservations/{reservationId}")
    public void deleteReservation(@PathVariable Long roomId,
                                  @PathVariable Long reservationId) {
        //todo userId를 얻어서 같이 줘야함 일단 ID가 1인 유저
        userService.cancelReservation(roomId, reservationId, 1L);
    }
}
