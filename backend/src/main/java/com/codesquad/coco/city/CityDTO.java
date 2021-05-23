package com.codesquad.coco.city;

public class CityDTO {

    private String name;
    private String imageUrl;

    public CityDTO(String name, String imageUrl) {
        this.name = name;
        this.imageUrl = imageUrl;
    }

    public String getName() {
        return name;
    }

    public String getImageUrl() {
        return imageUrl;
    }
}
