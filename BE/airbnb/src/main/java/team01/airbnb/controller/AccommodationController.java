package team01.airbnb.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import team01.airbnb.domain.accommodation.Accommodation;
import team01.airbnb.dto.ApiResult;
import team01.airbnb.dto.request.AccommodationSaveRequestDto;
import team01.airbnb.dto.response.AccommodationResponseDto;
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
    public ApiResult<List<Accommodation>> accommodations() {
        return ApiResult.succeed(accommodationService.accommodations());
    }

    // todo : 조건에 따른 param 추가 예정
    @GetMapping("/search")
    public ApiResult<List<AccommodationResponseDto>> availableAccommodationsForReservation() {
        return ApiResult.succeed(accommodationService.findAvailableAccommodationsForReservation());
    }

    @PostMapping("/")
    public ApiResult createAccommodation(AccommodationSaveRequestDto accommodationSaveRequestDto) {
        accommodationService.save(accommodationSaveRequestDto);
        return ApiResult.ok();
    }
}
