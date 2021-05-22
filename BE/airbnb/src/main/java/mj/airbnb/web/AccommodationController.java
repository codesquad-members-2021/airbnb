package mj.airbnb.web;

import mj.airbnb.service.AccommodationService;
import mj.airbnb.web.dto.AccommodationResponseDto;
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
    public List<AccommodationResponseDto> viewAllAccommodations(
            @RequestParam Optional<String> destination, @RequestParam Optional<String> checkInDate,
            @RequestParam Optional<String> checkOutDate, @RequestParam Optional<Integer> minPrice,
            @RequestParam Optional<Integer> maxPrice, @RequestParam Optional<Integer> numOfAdult,
            @RequestParam Optional<Integer> numOfChild, @RequestParam Optional<Integer> numOfInfant) {


        if (destination.isPresent() && checkInDate.isPresent() && checkOutDate.isPresent() &&
                minPrice.isPresent() && maxPrice.isPresent() && numOfAdult.isPresent() &&
                numOfChild.isPresent() && numOfInfant.isPresent()) {

            logger.info("모든 조건에 따라 숙소 조회 ");
            return accommodationService.findAllAccommodations();
        }

        if (destination.isPresent() && checkInDate.isPresent() && checkOutDate.isPresent() &&
                minPrice.isPresent() && maxPrice.isPresent()) {

            logger.info("지역, 날짜, 가격 조건에 따라 숙소 조회 ");
            return accommodationService.findAllAccommodations();
        }

        if (destination.isPresent() && checkInDate.isPresent() && checkOutDate.isPresent()) {

            logger.info("지역, 날짜 조건에 따라 숙소 조회 ");
            return accommodationService.findAllAccommodations();
        }

        if (destination.isPresent()) {

            logger.info("지역 조건에 따라 숙소 조회 ");
            return accommodationService.findAllByDestination(destination.get());
        }

        logger.info("모든 숙소 조회 ");
        return accommodationService.findAllAccommodations();
    }

}
