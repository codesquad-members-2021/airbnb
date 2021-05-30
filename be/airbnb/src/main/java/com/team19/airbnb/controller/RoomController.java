package com.team19.airbnb.controller;

import com.team19.airbnb.ResponseBody;
import com.team19.airbnb.dto.RoomDetailResponseDTO;
import com.team19.airbnb.dto.RoomPriceRequestDTO;
import com.team19.airbnb.dto.RoomPriceResponseDTO;
import com.team19.airbnb.domain.room.Host;
import com.team19.airbnb.dto.SearchRequestDTO;
import com.team19.airbnb.service.RoomService;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@RestController
public class RoomController {

    private final RoomService roomService;

    public RoomController(RoomService roomService) {
        this.roomService = roomService;
    }

    @GetMapping("/rooms/{roomId}")
    public ResponseBody<RoomDetailResponseDTO> detailRoom(@PathVariable Long roomId) {
        return ResponseBody.ok(roomService.showRoom(roomId));
    }

    @GetMapping("/rooms/{roomId}/price")
    public RoomPriceResponseDTO detailRoomPopup(@ModelAttribute RoomPriceRequestDTO roomPriceRequestDTO) {
        return new RoomPriceResponseDTO(new BigDecimal(5000), new BigDecimal(3500), new BigDecimal(12000), new BigDecimal(7000), new BigDecimal(50000));
    }
    
    @GetMapping("/rooms/price")
    public BigDecimal[] searchPriceRange(@RequestParam String address) {
        return roomService.searchPriceRange(address);
    }

    @GetMapping("/rooms/price/test")
    public List<BigDecimal> searchPriceRangeTest(@RequestParam Double latitude, @RequestParam Double longitude ) {
        return roomService.searchPriceRangeTest(latitude, longitude);
    }

    @GetMapping("/rooms")
    public List<RoomDetailResponseDTO> searchRoomsByCondition(@ModelAttribute SearchRequestDTO searchRequestDTO) {
        System.out.println("searchRequestDTO.getCoordinate() = " + Arrays.toString(searchRequestDTO.getCoordinate()));

        return roomService.searchRoomsByCondition(searchRequestDTO);
    }
}
