package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.dto.RoomDTO;
import com.codesquad.airbnb.dto.Rooms;
import com.codesquad.airbnb.repository.RoomRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api")
public class RoomController {

    private RoomRepository roomRepository;

    public RoomController(RoomRepository roomRepository) {
        this.roomRepository = roomRepository;
    }

    @GetMapping("/rooms")
    public Rooms showRooms() {
        List<RoomDTO> roomDTOS = roomRepository.findAll().stream()
                .map(RoomDTO::toRoomDTO)
                .collect(Collectors.toList());
        return new Rooms(roomDTOS);
    }

    @GetMapping("/filteredRooms")
    public Rooms searchRooms(@RequestParam("checkIn") String checkIn, @RequestParam("checkOut") String checkOut,
                             @RequestParam("minPrice") int minPrice, @RequestParam("maxPrice") int maxPrice,
                             @RequestParam("numberOfPeople") int numberOfPeople) {
        List<RoomDTO> roomDTOS = roomRepository.getFilteredRooms(checkIn, checkOut, minPrice, maxPrice, numberOfPeople).stream()
                .map(RoomDTO::toRoomDTO)
                .collect(Collectors.toList());
        return new Rooms(roomDTOS);
    }
}
