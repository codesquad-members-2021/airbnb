package com.codesquad.airbnb.dto;

import java.util.ArrayList;
import java.util.List;

public class PropertiesResponseDto {

    List<PropertyDto> properties = new ArrayList<>();

    public PropertiesResponseDto(List<PropertyDto> properties) {
        this.properties = properties;
    }

    public List<PropertyDto> getProperties() {
        return properties;
    }
}
