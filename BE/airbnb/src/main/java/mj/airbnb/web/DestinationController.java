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

@RestController
@RequestMapping("api/destinations")
public class DestinationController {

    private AccommodationService accommodationService;
    private final Logger logger = LoggerFactory.getLogger(AccommodationController.class);

    public DestinationController(AccommodationService accommodationService) {
        this.accommodationService = accommodationService;
    }

    // TODO: 추후 보완(accommodation
    @GetMapping
    public List<String> viewAllByDestinationKeyword(@RequestParam String keyword) {
        logger.info("인기 여행지 조회");

        return accommodationService.findAllPopularDestinations(keyword);
    }
}
