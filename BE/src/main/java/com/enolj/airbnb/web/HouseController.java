package com.enolj.airbnb.web;

import com.enolj.airbnb.service.HouseService;
import com.enolj.airbnb.web.dto.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class HouseController {

    private final HouseService houseService;
    private final Logger logger = LoggerFactory.getLogger(HouseController.class);

    public HouseController(HouseService houseService) {
        this.houseService = houseService;
    }

    @GetMapping("/houses")
    public List<SearchResponseDTO> searchHouses(@RequestBody SearchRequestDTO requestDTO) {
        logger.info("숙소 검색 요청");
        return houseService.searchHousesByCondition(requestDTO);
    }

    @GetMapping("/houses/charges")
    public List<Integer> searchCharges(@RequestBody SearchChargesRequestDTO requestDTO) {
        logger.info("범위 내 숙소 가격 요청");
        return houseService.searchChargesByCondition(requestDTO);
    }

    @GetMapping("/houses/{houseId}")
    public ReservationInfoResponseDTO getReservationPage(@PathVariable Long houseId) {
        logger.info("{}번 숙소 예약 페이지 요청", houseId);
        return houseService.getReservationInfo(houseId);
    }

    @PostMapping("houses/{houseId}")
    public void makeReservation(@PathVariable Long houseId, @RequestBody ReservationRequestDTO requestDTO) {
        logger.info("{}번 숙소 예약 요청", houseId);
        houseService.makeReservation(requestDTO);
    }

    @GetMapping("/wishes")
    public List<WishesResponseDTO> getWishes() {
        logger.info("숙소 위시 리스트 요청");
        return houseService.getWishList();
    }

    @PostMapping("/wishes/{houseId}")
    public void changeWish(@PathVariable Long houseId) {
        logger.info("{}번 숙소의 위시 요청", houseId);
        houseService.changeWish(houseId);
    }

    @GetMapping("/reservation")
    public List<ReservationResponseDTO> getReservationList() {
        logger.info("숙소 예약 리스트 요청");
        return houseService.getReservationList();
    }
}
