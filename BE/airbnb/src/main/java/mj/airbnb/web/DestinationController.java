package mj.airbnb.web;

import mj.airbnb.service.AccommodationService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/destinations")
public class DestinationController {

    private final AccommodationService accommodationService;

    public DestinationController(AccommodationService accommodationService) {
        this.accommodationService = accommodationService;
    }

    // TODO: 추후 인기 여행지에 대한 기준 정립하여 보완할 것
    @GetMapping
    public List<String> viewAllByDestinationKeyword(@RequestParam String keyword) {
        return accommodationService.findAllPopularDestinations(keyword);
    }
}
