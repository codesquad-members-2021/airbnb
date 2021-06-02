package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.dto.RoomDTO;
import com.codesquad.airbnb.dto.Rooms;
import com.codesquad.airbnb.service.RoomService;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@RestController
@RequestMapping("/api/rooms")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class RoomController {

    private RoomService roomService;

    public RoomController(RoomService roomService) {
        this.roomService = roomService;
    }

    @GetMapping
    public Rooms showRooms() {
        return new Rooms(roomService.getRoomDTOS());
    }

    @GetMapping(params = {"checkIn", "checkOut", "minPrice", "maxPrice", "numberOfPeople"})
    public Rooms searchRooms(@RequestParam("checkIn") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate checkIn,
                             @RequestParam("checkOut") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate checkOut,
                             @RequestParam("minPrice") int minPrice, @RequestParam("maxPrice") int maxPrice,
                             @RequestParam("numberOfPeople") int numberOfPeople) {
        List<RoomDTO> roomDTOS = roomService.getFilteredRoomDTOS(checkIn, checkOut, minPrice, maxPrice, numberOfPeople);
        return new Rooms(roomDTOS);
    }

    @PostMapping("/{userId}/wish/{roomId}")
    public void addWish(@PathVariable("roomId") Long roomId, @PathVariable("userId") Long userId) {
        roomService.saveWish(roomId, userId);
    }

    @DeleteMapping("/{userId}/wish/{roomId}")
    public void deleteWish(@PathVariable("roomId") Long roomId, @PathVariable("userId") Long userId) {
        roomService.deleteWish(roomId, userId);
    }
}
