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

        //todo : total가 맞는지 검사를 해야 한다. 클라이언트에서 보여주기 위한 계산을 하고 maxgust 도
        //  또 해당 날짜에 예약이 가능한지 여부도 검증
        //  여기서는 그 계산한 금액이 중간에 바뀌지 않고 잘 왔는지 검사를 한다.
        //  user 도 추가되어야 한다.

        logger.debug(reservationDTO.toString());
        userService.reservation(roomId,reservationDTO);
    }
}
