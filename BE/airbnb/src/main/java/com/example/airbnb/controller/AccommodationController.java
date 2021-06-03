package com.example.airbnb.controller;

import com.example.airbnb.dto.AccommodationDTO;
import com.example.airbnb.dto.AccommodationListDTO;
import com.example.airbnb.service.AccommodationService;
import com.example.airbnb.utils.SearchConditions;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/airbnb")
public class AccommodationController {

    private final AccommodationService accommodationService;

    public AccommodationController(AccommodationService accommodationService) {
        this.accommodationService = accommodationService;
    }

    @GetMapping
    public AccommodationListDTO getSample(@RequestParam(required = false) String location,
                                          @RequestParam(required = false) String checkin,
                                          @RequestParam(required = false) String checkout,
                                          @RequestParam(required = false) Integer adults,
                                          @RequestParam(required = false) Integer children,
                                          @RequestParam(required = false) Integer infants) {
        SearchConditions conditions = new SearchConditions(location, checkin, checkout, adults, children, infants);
        return accommodationService.availableAccommodationsList(conditions);
    }

    @PostMapping
    public String addAccommodation(AccommodationDTO accommodationDTO) {
        return "good!";
    }

    @GetMapping("/like")
    public AccommodationListDTO likeMarkredList() {
        return accommodationService.likeMarkredList();
    }
}
