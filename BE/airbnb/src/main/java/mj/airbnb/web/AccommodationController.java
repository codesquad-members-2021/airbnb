package mj.airbnb.web;

import mj.airbnb.service.AccommodationService;
import mj.airbnb.web.dto.AccommodationResponseDto;
import mj.airbnb.web.dto.SearchRequestDto;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/accommodations")
public class AccommodationController {

    private AccommodationService accommodationService;
    private final Logger logger = LoggerFactory.getLogger(AccommodationController.class);

    public AccommodationController(AccommodationService accommodationService) {
        this.accommodationService = accommodationService;
    }

    @GetMapping
    public List<AccommodationResponseDto> searchAccommodationsByConditions(SearchRequestDto requestDto) {


        if (requestDto.getDestination().isPresent() && requestDto.getCheckInDate().isPresent() && requestDto.getCheckOutDate().isPresent() &&
                requestDto.getMinPrice().isPresent() && requestDto.getMaxPrice().isPresent() && requestDto.getNumOfAdult().isPresent() &&
                requestDto.getNumOfChild().isPresent() && requestDto.getNumOfInfant().isPresent()) {

            logger.info("지역, 날짜, 가격, 인원 조건 따라 숙소 조회 ");
            return accommodationService.findAllByDestinationAndDateAndPriceAndPeople(requestDto.getDestination().get(), requestDto.getCheckInDate().get(),
                    requestDto.getCheckOutDate().get(), requestDto.getMinPrice().get(), requestDto.getMaxPrice().get(), requestDto.getNumOfAdult().get(), requestDto.getNumOfChild().get(), requestDto.getNumOfInfant().get());
        }

        if (requestDto.getDestination().isPresent() && requestDto.getCheckInDate().isPresent() && requestDto.getCheckOutDate().isPresent() &&
                requestDto.getMinPrice().isPresent() && requestDto.getMaxPrice().isPresent()) {

            logger.info("지역, 날짜, 가격 조건에 따라 숙소 조회 ");
            return accommodationService.findAllByDestinationAndDateAndPrice(requestDto.getDestination().get(), requestDto.getCheckInDate().get(),
                    requestDto.getCheckOutDate().get(), requestDto.getMinPrice().get(), requestDto.getMaxPrice().get());
        }

        if (requestDto.getDestination().isPresent() && requestDto.getCheckInDate().isPresent() && requestDto.getCheckOutDate().isPresent()) {

            logger.info("지역, 날짜 조건에 따라 숙소 조회 ");
            return accommodationService.findAllByDestinationAndDate(requestDto.getDestination().get(), requestDto.getCheckInDate().get(), requestDto.getCheckOutDate().get());
        }

        if (requestDto.getDestination().isPresent()) {

            logger.info("지역 조건에 따라 숙소 조회 ");
            return accommodationService.findAllByDestination(requestDto.getDestination().get());
        }

        logger.info("모든 숙소 조회 ");
        return accommodationService.findAllAccommodations();
    }

}
