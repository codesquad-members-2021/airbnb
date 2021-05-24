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

    @GetMapping
    public ApiResult accommodations() {
        return ApiResult.succeed(accommodationService.accommodations());
    }

    // todo : 조건에 따른 param 추가 예정
    @GetMapping("/search")
    public ApiResult accommodationsBySearch() {
        return ApiResult.succeed(accommodationService.findAccommodationsBySearch());

    }
}
