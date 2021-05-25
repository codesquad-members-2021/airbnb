package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.dto.PropertyDetailResponseDto;
import com.codesquad.airbnb.service.PropertyService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/room")
public class PropertyController {

    PropertyService propertyService;

    public PropertyController(PropertyService propertyService) {
        this.propertyService = propertyService;
    }

    @GetMapping("/{propertyId}")
    public ResponseEntity<PropertyDetailResponseDto> propertiesAverageValue(@PathVariable Long propertyId) {
        return ResponseEntity.ok().body(propertyService.findPropertyDetailByPropertyId(propertyId));
    }
}
