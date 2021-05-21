package com.team19.airbnb.dto;

import com.team19.airbnb.entity.HeroBanner;
import com.team19.airbnb.entity.NearDestination;

import java.util.List;

public class MainResponseDTO {

    private List<HeroBanner> heroBanners;
    private List<NearDestination> nearDestinations;

    public MainResponseDTO(List<HeroBanner> heroBanners, List<NearDestination> nearDestinations) {
        this.heroBanners = heroBanners;
        this.nearDestinations = nearDestinations;
    }

    public List<HeroBanner> getHeroBanners() {
        return heroBanners;
    }

    public List<NearDestination> getNearDestinations() {
        return nearDestinations;
    }
}
