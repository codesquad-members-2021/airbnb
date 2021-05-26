package com.codesquad.airbnb.web.controller;

import com.codesquad.airbnb.web.dto.UserInput;
import com.codesquad.airbnb.web.service.rooms.RoomService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rooms")
public class RoomsController {

    private final RoomService roomService;

    public RoomsController(RoomService roomService) {
        this.roomService = roomService;
    }

    @GetMapping
    public void rooms(UserInput userInput) {

    }
}
