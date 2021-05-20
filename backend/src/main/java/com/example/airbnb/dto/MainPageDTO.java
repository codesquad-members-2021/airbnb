package com.example.airbnb.dto;

import java.util.List;

public class MainPageDTO {
    public String mainImage = "https://a0.muscache.com/im/pictures/ddc7f01f-3fb3-483c-87e6-701dad52c930.jpg?im_w=960";
    public List<CityDTO> cities;

    public MainPageDTO(List<CityDTO> cities) {
        this.cities = cities;
    }

    public List<CityDTO> getCities() {
        return cities;
    }

    public String getMainImage() {
        return mainImage;
    }

}
