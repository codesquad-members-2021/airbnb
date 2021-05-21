package com.example.airbnb.controller;


import com.example.airbnb.dto.CityDTO;
import com.example.airbnb.dto.MainPageDTO;
import com.example.airbnb.service.CityService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Api(tags = {"Airbnb API"}, description = "Airbnb API made by Bat")
@RestController
@RequestMapping("/cities")
public class AirbnbController {

    private final CityService cityService;

    public AirbnbController(CityService cityService) {
        this.cityService = cityService;
    }

    @GetMapping
    @ApiOperation(value = "도시 목록", notes = "도시들을 반환합니다.")
    @ResponseStatus(HttpStatus.OK)
    public MainPageDTO getMainPage() {
        return cityService.getMainPage();
    }

}


