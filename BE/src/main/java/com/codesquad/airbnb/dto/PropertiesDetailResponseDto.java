package com.codesquad.airbnb.dto;

import java.util.ArrayList;
import java.util.List;

public class PropertiesDetailResponseDto {

    private List<String> imageUrls = new ArrayList<>();
    private PropertyDetailDto property;

    public PropertiesDetailResponseDto(List<String> imageUrls, PropertyDetailDto property) {
        this.imageUrls = imageUrls;
        this.property = property;
    }

    public List<String> getImageUrls() {
        return imageUrls;
    }

    public PropertyDetailDto getProperty() {
        return property;
    }

    @Override
    public String toString() {
        return "PropertiesDetailResponseDto{" +
                "imageUrls=" + imageUrls +
                ", property=" + property +
                '}';
    }
}
