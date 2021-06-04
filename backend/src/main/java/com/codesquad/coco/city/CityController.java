package com.codesquad.coco.city;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/cities")
public class CityController {

    private final CityService cityService;

    public CityController(CityService cityService) {
        this.cityService = cityService;
    }

    @GetMapping
    public CitiesDTO findAllCity() {
        List<CityDTO> cityDTOs = cityService.findAllCityDTOs();
        return new CitiesDTO(cityDTOs);
    }
}
