package com.codesquad.airbnb.web.controller;

import com.codesquad.airbnb.web.dto.ReservationPreview;
import com.codesquad.airbnb.web.dto.UserInput;
import com.codesquad.airbnb.web.service.rooms.RoomService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

@Slf4j
@RestController
@RequestMapping("/rooms/{roomId}/reservations")
public class ReservationController {

    private final RoomService roomService;

    public ReservationController(RoomService roomService) {
        this.roomService = roomService;
    }

    @PostMapping
    public ReservationPreview roomDetail(@PathVariable int roomId, @RequestBody UserInput userInput) {
        return roomService.makeReservation(roomId, 2, userInput);
    }
}
