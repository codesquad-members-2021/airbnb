package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.dao.GetPropertyModel;
import com.codesquad.airbnb.dto.price.PriceSearchDTO;
import com.codesquad.airbnb.dto.property.PropertiesResponseDTO;
import com.codesquad.airbnb.service.PropertyService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/search")
public class SearchController {

    private final PropertyService propertyService;

    public SearchController(PropertyService propertyService) {
        this.propertyService = propertyService;
    }

    @GetMapping()
    public PropertiesResponseDTO propertiesSearch(@RequestParam Map<String, String> parameterMap) {
        ObjectMapper objectMapper = new ObjectMapper();
        GetPropertyModel getPropertyModel = objectMapper.convertValue(parameterMap, GetPropertyModel.class);

        return propertyService.findBy(getPropertyModel);
    }

    @GetMapping("/{locationId}")
    public PriceSearchDTO propertiesAverageValue(@PathVariable Long locationId) {
        return propertyService.priceSearch(locationId);
    }

}
