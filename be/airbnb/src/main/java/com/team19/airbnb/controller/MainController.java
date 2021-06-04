package com.team19.airbnb.controller;

import com.team19.airbnb.ResponseBody;
import com.team19.airbnb.dto.MainResponseDTO;
import com.team19.airbnb.service.MainService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    private final MainService mainService;

    public MainController(MainService mainService) {
        this.mainService = mainService;
    }

    @GetMapping("/main")
    public ResponseBody<MainResponseDTO> main() {
        return ResponseBody.ok(mainService.main());
    }
}
