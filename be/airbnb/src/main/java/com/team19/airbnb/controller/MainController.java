package com.team19.airbnb.controller;

import com.team19.airbnb.dto.MainResponseDTO;
import com.team19.airbnb.entity.HeroBanner;
import com.team19.airbnb.entity.NearDestination;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class MainController {
    @GetMapping("/main")
    public MainResponseDTO main() {
        List<HeroBanner> heroBanners = new ArrayList<>();
        heroBanners.add(new HeroBanner( "hero1", "img1"));
        heroBanners.add(new HeroBanner("hero2", "img2"));
        List<NearDestination> nearDestinations = new ArrayList<>();
        nearDestinations.add(new NearDestination( "gangnam", 0.5, "img4"));
        nearDestinations.add(new NearDestination("gangbuk", 1.0, "img5"));
        return new MainResponseDTO(heroBanners, nearDestinations);
    }
}
