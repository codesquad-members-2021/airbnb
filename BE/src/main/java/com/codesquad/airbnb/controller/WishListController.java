package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.dto.property.PropertiesResponseDTO;
import com.codesquad.airbnb.service.PropertyService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WishListController {

    private final PropertyService propertyService;

    public WishListController(PropertyService propertyService) {
        this.propertyService = propertyService;
    }

    @GetMapping("/wishlist")
    public PropertiesResponseDTO wishlist() {
        return propertyService.findBookmarkTrue();
    }
}
