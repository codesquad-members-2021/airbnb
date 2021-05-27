package mj.airbnb.web;

import mj.airbnb.service.AccommodationService;
import mj.airbnb.web.dto.AccommodationResponseDto;
import mj.airbnb.web.dto.SearchRequestDto;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/accommodations")
public class AccommodationController {

    private final AccommodationService accommodationService;

    public AccommodationController(AccommodationService accommodationService) {
        this.accommodationService = accommodationService;
    }

    @GetMapping
    public List<AccommodationResponseDto> viewAccommodationsByConditions(SearchRequestDto requestDto) {
        return accommodationService.searchAccommodationsByConditions(requestDto);
    }

}
