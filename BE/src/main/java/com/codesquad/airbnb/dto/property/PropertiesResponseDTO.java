package com.codesquad.airbnb.dto.property;

import java.util.ArrayList;
import java.util.List;

public class PropertiesResponseDTO {

    List<PropertyDTO> properties = new ArrayList<>();

    public PropertiesResponseDTO(List<PropertyDTO> properties) {
        this.properties = properties;
    }

    public List<PropertyDTO> getProperties() {
        return properties;
    }
}
