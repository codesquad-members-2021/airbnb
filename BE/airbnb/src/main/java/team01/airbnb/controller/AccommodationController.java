package team01.airbnb.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import team01.airbnb.domain.accommodation.Accommodation;
import team01.airbnb.dto.ApiResult;
import team01.airbnb.service.AccommodationService;

import java.util.List;

@RequestMapping("/accommodations")
@RestController
public class AccommodationController {

    private final AccommodationService accommodationService;

    public AccommodationController(AccommodationService accommodationService) {
        this.accommodationService = accommodationService;
    }

    @GetMapping()
    public ApiResult accommodations() {
        List<Accommodation> accommodations = accommodationService.accommodations();
        return ApiResult.succeed(accommodations);
    }
}
