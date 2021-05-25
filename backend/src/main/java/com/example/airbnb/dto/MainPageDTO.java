package com.example.airbnb.dto;

import java.util.ArrayList;
import java.util.List;

public class MainPageDTO {
    public String mainImage;
    public List<CityDTO> cities;
    public List<String> extraImages = new ArrayList<String>();

    public MainPageDTO(List<CityDTO> cities) {
        this.cities = cities;
    }

    public List<CityDTO> getCities() {
        return cities;
    }

    public String getMainImage() {
        return "https://a0.muscache.com/im/pictures/ddc7f01f-3fb3-483c-87e6-701dad52c930.jpg?im_w=960";
    }

    public List<String> getExtraImages() {
        extraImages.add("https://a0.muscache.com/im/pictures/2f13349d-879d-43c6-83e3-8e5679291d53.jpg?im_w=480");
        extraImages.add("https://a0.muscache.com/im/pictures/36f53e61-db8d-403c-9122-5b761c0e4264.jpg?im_w=480");
        extraImages.add("https://a0.muscache.com/im/pictures/7d82ca14-56e5-4465-8218-dcfa7d69b6ac.jpg?im_w=480");
        extraImages.add("https://a0.muscache.com/im/pictures/10a638e1-6aff-4313-8033-1275cec83987.jpg?im_w=480");
        return extraImages;
    }

}
