package mj.airbnb.web;

import mj.airbnb.service.AccommodationService;
import mj.airbnb.web.dto.AccommodationResponseDto;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/accommodations")
public class AccommodationController {

    private AccommodationService accommodationService;
    private final Logger logger = LoggerFactory.getLogger(AccommodationController.class);

    public AccommodationController(AccommodationService accommodationService) {
        this.accommodationService = accommodationService;
    }

    @GetMapping
    public List<AccommodationResponseDto> viewAllAccommodations() {
        logger.info("모든 숙소 조회 ");
        return accommodationService.findAllAccommodations();
    }

}
