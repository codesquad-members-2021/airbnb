package com.example.airbnb.controller;

import com.example.airbnb.dto.PriceDTO;
import com.example.airbnb.dto.RoomDetailDTO;
import com.example.airbnb.service.RoomService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@Api(tags = {"Airbnb API"}, description = "Airbnb API made by Bat")
@RestController
@RequestMapping("/rooms")
public class RoomController {
    private final RoomService roomService;

    public RoomController(RoomService roomService) {
        this.roomService = roomService;
    }

    @GetMapping("/{roomId}")
    @ApiOperation(value = "방 상세보기", notes = "방 상세보기 반환합니다.")
    @ResponseStatus(HttpStatus.OK)
    public RoomDetailDTO getRoomDetail(@ApiParam("방 식별자") @PathVariable Long roomId) {
        return roomService.getRoomDetail(roomId);
    }

    @GetMapping("/prices")
    @ApiOperation(value = "방 가격보기", notes = "방 가격보기 반환합니다.")
    @ResponseStatus(HttpStatus.OK)
    public PriceDTO getAllPrices(@DateTimeFormat(pattern = "yyyy-MM-dd") @RequestParam LocalDate checkIn, @DateTimeFormat(pattern = "yyyy-MM-dd") @RequestParam LocalDate checkOut, @RequestParam String cityName) {
        PriceDTO priceDTO = roomService.getAllPricesByCityAndDate(checkIn, checkOut, cityName);
        return priceDTO;
    }


}
