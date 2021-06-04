package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.dto.property.PropertyDetailResponseDTO;
import com.codesquad.airbnb.service.PropertyService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/rooms")
@RestController
public class PropertyController {

    private final PropertyService propertyService;

    public PropertyController(PropertyService propertyService) {
        this.propertyService = propertyService;
    }

    @GetMapping("/{propertyId}")
    public PropertyDetailResponseDTO findDetailedPropertyById(@PathVariable Long propertyId) {
        return propertyService.findPropertyDetailByPropertyId(propertyId);
    }
}
