package com.codesquad.coco.city;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class CityController {

    private CityService cityService;

    public CityController(CityService cityService) {
        this.cityService = cityService;
    }

    @GetMapping("/citys")
    public CitiesDTO findAllCity(){
        List<CityDTO> cityDTOs = cityService.findAllCityDTOs();
        return new CitiesDTO(cityDTOs);
    }
}
