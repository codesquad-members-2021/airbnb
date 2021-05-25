package com.codesquad.airbnb.dto;

import java.util.ArrayList;
import java.util.List;

public class PropertyDetailResponseDTO {

    private List<String> imageUrls = new ArrayList<>();
    private PropertyDetailDTO property;

    public PropertyDetailResponseDTO(List<String> imageUrls, PropertyDetailDTO property) {
        this.imageUrls = imageUrls;
        this.property = property;
    }

    public List<String> getImageUrls() {
        return imageUrls;
    }

    public PropertyDetailDTO getProperty() {
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
