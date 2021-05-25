package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.dto.PriceSearchDTO;
import com.codesquad.airbnb.dto.PropertiesResponseDTO;
import com.codesquad.airbnb.service.PropertyService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;

@RestController
@RequestMapping("/search")
public class SearchController {

    PropertyService propertyService;

    public SearchController(PropertyService propertyService) {
        this.propertyService = propertyService;
    }

    @GetMapping()
    public ResponseEntity<PropertiesResponseDTO> propertiesSearch(
            @RequestParam(value = "locationId", required = false) Long locationId,
            @RequestParam(value = "checkIn", required = false) LocalDate checkIn,
            @RequestParam(value = "checkOut", required = false) LocalDate checkOut,
            @RequestParam(value = "minPrice", required = false, defaultValue = "0") int minPrice,
            @RequestParam(value = "maxPrice", required = false, defaultValue = "1000000") int maxPrice,
            @RequestParam(value = "adult", required = false, defaultValue = "0") int adult,
            @RequestParam(value = "children", required = false, defaultValue = "0") int children,
            @RequestParam(value = "infant", required = false, defaultValue = "0") int infant
    ) {
        PropertiesResponseDTO propertiesResponseDto = propertyService.findBy(locationId, checkIn, checkOut, minPrice, maxPrice, adult, children, infant);
        return ResponseEntity.ok().body(propertiesResponseDto);
    }

    @GetMapping("/{locationId}")
    public ResponseEntity<PriceSearchDTO> propertiesAverageValue(@PathVariable Long locationId) {
        return ResponseEntity.ok().body(propertyService.priceSearch(locationId));
    }

}
