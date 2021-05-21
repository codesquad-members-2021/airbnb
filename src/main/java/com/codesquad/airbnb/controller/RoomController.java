package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.domain.Room;
import com.codesquad.airbnb.dto.Rooms;
import com.codesquad.airbnb.repository.RoomRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/rooms")
public class RoomController {

    private RoomRepository roomRepository;

    public RoomController(RoomRepository roomRepository) {
        this.roomRepository = roomRepository;
    }

    @GetMapping
    public Rooms showRooms() {
        List<Room> rooms = roomRepository.findAll();
        return new Rooms(rooms);
    }
}
