package com.enolj.airbnb.web;

import com.enolj.airbnb.service.ReservationService;
import com.enolj.airbnb.web.dto.ReservationDetailDTO;
import com.enolj.airbnb.web.dto.ReservationInfoResponseDTO;
import com.enolj.airbnb.web.dto.ReservationRequestDTO;
import com.enolj.airbnb.web.dto.ReservationResponseDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class ReservationController {

    private final ReservationService reservationService;
    private final Logger logger = LoggerFactory.getLogger(HouseController.class);

    public ReservationController(ReservationService reservationService) {
        this.reservationService = reservationService;
    }

    @GetMapping("/reservation")
    public List<ReservationResponseDTO> getReservationList(@RequestHeader String authorization) {
        logger.info("숙소 예약 리스트 요청");
        return reservationService.getReservationList(authorization);
    }

    @GetMapping("/reservation/{houseId}")
    public ReservationInfoResponseDTO getReservationPage(@PathVariable Long houseId) {
        logger.info("{}번 숙소 예약 페이지 요청", houseId);
        return reservationService.getReservationInfo(houseId);
    }

    @PostMapping("/reservation/{houseId}")
    public void makeReservation(@RequestHeader String authorization, @PathVariable Long houseId, @RequestBody ReservationRequestDTO requestDTO) {
        logger.info("{}번 숙소 예약 요청", houseId);
        reservationService.makeReservation(authorization, houseId, requestDTO);
    }

    @DeleteMapping("/reservation/{houseId}")
    public void cancelReservation(@RequestHeader String authorization, @PathVariable Long houseId) {
        logger.info("{}번 숙소의 예약 취소 요청", houseId);
        reservationService.cancelReservation(authorization, houseId);
    }

    @GetMapping("/reservation/detail/{houseId}")
    public ReservationDetailDTO getReservationDetail(@RequestHeader String authorization, @PathVariable Long houseId) {
        logger.info("{}번 숙소의 디테일 예약정보 요청", houseId);
        return reservationService.getReservationDetail(authorization, houseId);
    }
}
