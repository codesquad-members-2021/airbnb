package com.codesquad.coco.user;

import com.codesquad.coco.global.auth.Auth;
import com.codesquad.coco.global.auth.UserId;
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

    @Auth
    @PostMapping("/rooms/{roomId}/reservations")
    public void reservation(@PathVariable Long roomId, @Valid @RequestBody ReservationDTO reservationDTO,
                            @UserId Long userId) {
        logger.debug(reservationDTO.toString());
        userService.reservation(roomId, userId, reservationDTO);
    }

    @Auth
    @DeleteMapping("/rooms/{roomId}/reservations/{reservationId}")
    public void deleteReservation(@PathVariable Long roomId,
                                  @PathVariable Long reservationId,
                                  @UserId Long userId) {
        userService.cancelReservation(roomId, reservationId, userId);
    }


}
