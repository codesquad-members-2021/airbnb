package com.example.airbnb.controller;

import com.example.airbnb.dto.MainPageDTO;
import com.example.airbnb.dto.RecommendedDTO;
import com.example.airbnb.dto.ThemeDTO;
import com.example.airbnb.service.SuggestionsService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/suggestions")
public class SuggestionController {


    @GetMapping
    public MainPageDTO mainPageSuggestions() {

        return SuggestionsService.mainPage();

    }
}

