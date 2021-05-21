package com.example.airbnb.dto;

public class CityDTO {
    private Long id;
    private String cityName;
    private String cityImage;

    public CityDTO(Long id, String cityName, String cityImage) {
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
