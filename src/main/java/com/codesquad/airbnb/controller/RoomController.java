package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.dto.RoomDTO;
import com.codesquad.airbnb.dto.Rooms;
import com.codesquad.airbnb.exception.WishNotAddableException;
import com.codesquad.airbnb.exception.WishNotFoundException;
import com.codesquad.airbnb.repository.RoomRepository;
import com.codesquad.airbnb.repository.WishRepository;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/rooms")
public class RoomController {

    private RoomRepository roomRepository;
    private WishRepository wishRepository;

    public RoomController(RoomService roomService) {
        this.roomService = roomService;
    }

    @GetMapping
    public Rooms showRooms() {
        List<RoomDTO> roomDTOS = roomRepository.findAll().stream()
                .map(RoomDTO::toRoomDTO)
                .collect(Collectors.toList());
        return new Rooms(roomDTOS);
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
    public void addWish(@PathVariable("userId") Long userId, @PathVariable("roomId") Long roomId) {
        if (!wishRepository.findByRoomIdAndUserId(roomId, userId).isEmpty()) {
            throw new WishNotAddableException();
        }
        wishRepository.insert(roomId, userId);
    }

    @DeleteMapping("/{userId}/wish/{roomId}")
    public void deleteWish(@PathVariable("userId") Long userId, @PathVariable("roomId") Long roomId) {
        if (wishRepository.findByRoomIdAndUserId(roomId, userId).isEmpty()) {
            throw new WishNotFoundException();
        }
        wishRepository.delete(roomId, userId);
    }
}
