package com.team19.airbnb.dto;

import com.team19.airbnb.domain.main.HeroBanner;
import com.team19.airbnb.domain.main.NearDestination;

import java.util.List;

public class MainResponseDTO {

    private List<HeroBanner> heroBanners;
    private List<NearDestination> nearDestinations;

    private MainResponseDTO(List<HeroBanner> heroBanners, List<NearDestination> nearDestinations) {
        this.heroBanners = heroBanners;
        this.nearDestinations = nearDestinations;
    }

    public static MainResponseDTO create(List<HeroBanner> heroBanners, List<NearDestination> nearDestinations) {
        return new MainResponseDTO(heroBanners, nearDestinations);
    }

    public List<HeroBanner> getHeroBanners() {
        return heroBanners;
    }

    public List<NearDestination> getNearDestinations() {
        return nearDestinations;
    }
}
