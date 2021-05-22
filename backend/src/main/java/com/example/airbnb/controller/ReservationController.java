package com.example.airbnb.controller;

import com.example.airbnb.service.ReservationService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;

@Api(tags = {"Airbnb API"}, description = "Airbnb API made by Bat")
@RestController
@RequestMapping("/reserve")
public class ReservationController {
    private ReservationService reservationService;

    public ReservationController(ReservationService reservationService) {
        this.reservationService = reservationService;
    }

    @PostMapping("/{roomId}")
    @ApiOperation(value = "방 예약", notes = "방 예약합니다.")
    @ResponseStatus(HttpStatus.CREATED)
    public Object reserveRoom(@ApiParam(value = "방 식별자", example = "2") @PathVariable Long roomId,
                              @ApiParam(value = "체크인 날짜", example = "2021-05-20") @DateTimeFormat(pattern = "yyyy-MM-dd") @RequestParam LocalDate checkIn,
                              @ApiParam(value = "체크아웃 날짜", example = "2021-05-25") @DateTimeFormat(pattern = "yyyy-MM-dd") @RequestParam LocalDate checkOut,
                              @ApiParam(value = "인원", example = "3") @RequestParam int numOfPeople) {
        if (reservationService.checkPeriodCondition(roomId, checkIn, checkOut)) {
            return ResponseEntity.badRequest().body("선택하신 기간에 예약이 불가능합니다.");
        }
        if (!reservationService.checkHeadcountCondition(roomId, numOfPeople)) {
            return ResponseEntity.badRequest().body("수용인원을 초과하였습니다.");
        }
        return reservationService.reservationRoom(roomId, checkIn, checkOut, numOfPeople);
    }

    @DeleteMapping("/{reservationId}")
    @ApiOperation(value = "예약 취소", notes = "예약을 취소합니다.")
    @ResponseStatus(HttpStatus.ACCEPTED)
    public void deleteReservation(@ApiParam("예약 식별자") @PathVariable Long reservationId) {
        reservationService.cancelReservation(reservationId);
    }

}
