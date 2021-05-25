package com.example.airbnb.controller;

import com.example.airbnb.dto.PriceDTO;
import com.example.airbnb.dto.RoomDetailDTO;
import com.example.airbnb.dto.RoomListDTO;
import com.example.airbnb.service.RoomService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.format.annotation.DateTimeFormat;
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
    public RoomDetailDTO getRoomDetail(@ApiParam("방 식별자") @PathVariable Long roomId) {
        return roomService.getRoomDetail(roomId);
    }

    @GetMapping("/prices")
    @ApiOperation(value = "예약 가능한 방들 가격보기", notes = "예약 가능한 방들의 가격을 반환합니다.")
    public PriceDTO getAllPrices(@ApiParam(value = "체크인 날짜", example = "2021-05-20") @DateTimeFormat(pattern = "yyyy-MM-dd") @RequestParam LocalDate checkIn,
                                 @ApiParam(value = "체크아웃 날짜", example = "2021-05-25") @DateTimeFormat(pattern = "yyyy-MM-dd") @RequestParam LocalDate checkOut,
                                 @ApiParam(value = "도시 이름", example = "인천") @RequestParam String cityName) {
        return roomService.getAllPricesByConditionsOfCityAndPeriod(checkIn, checkOut, cityName);
    }

    @GetMapping("/search")
    @ApiOperation(value = "예약 가능한 방들 목록보기", notes = "검색 조건에 따른 예약 가능한 방들 모두를 반환합니다.")
    public List<RoomListDTO> searchRoomByConditions(@ApiParam(value = "체크인 날짜", example = "2021-05-20") @DateTimeFormat(pattern = "yyyy-MM-dd") @RequestParam LocalDate checkIn,
                                    @ApiParam(value = "체크아웃 날짜", example = "2021-05-25") @DateTimeFormat(pattern = "yyyy-MM-dd") @RequestParam LocalDate checkOut,
                                    @ApiParam(value = "도시 이름", example = "인천") @RequestParam String cityName,
                                    @ApiParam(value = "최소 가격", example = "30000") @RequestParam int minPrice,
                                    @ApiParam(value = "최대 가격", example = "80000") @RequestParam int maxPrice,
                                    @ApiParam(value = "인원", example = "2") @RequestParam int numOfPeople) {
        return roomService.getRoomsByConditionsOfCityAndPeriodAndPriceAndHeadcount(checkIn, checkOut, cityName, minPrice, maxPrice, numOfPeople);
    }

}

