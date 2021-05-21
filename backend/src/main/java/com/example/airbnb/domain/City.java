package com.example.airbnb.domain;

import org.springframework.data.annotation.Id;

public class City {
    @Id
    private final Long id;
    private final String cityName;
    private final String cityImage;

    public City(Long id, String cityName, String cityImage) {
        this.id = id;
        this.cityName = cityName;
        this.cityImage = cityImage;
    }

    public Long getId() {
        return id;
    }

    public String getCityName() {
        return cityName;
    }

    public String getCityImage() {
        return cityImage;
    }

}
