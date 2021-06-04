package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.dto.MainDTO;
import com.codesquad.airbnb.service.MainService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    private final MainService mainService;

    public MainController(MainService mainService) {
        this.mainService = mainService;
    }

    @GetMapping("/main")
    public MainDTO getMain() {
        return mainService.browseMainDTO();
    }
}
