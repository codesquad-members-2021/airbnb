package com.codesquad.coco.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
public class UserController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/rooms/{roomId}/reservations")
    public void reservation (@PathVariable Long roomId,@Valid @RequestBody ReservationDTO reservationDTO){
        //todo userId를 얻어서 같이 줘야함 일단 null
        logger.debug(reservationDTO.toString());
        userService.reservation(roomId, null, reservationDTO);
    }
}
