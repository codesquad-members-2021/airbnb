package com.codesquad.coco.city;

import java.util.List;

public class CitiesDTO {

    private List<CityDTO> city;

    public CitiesDTO(List<CityDTO> city) {
        this.city = city;
    }

    public List<CityDTO> getCity() {
        return city;
    }
}
