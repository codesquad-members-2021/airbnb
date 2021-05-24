package com.codesquad.coco.city;

import java.util.List;

public class CitiesDTO {

    private List<CityDTO> cities;

    public CitiesDTO(List<CityDTO> city) {
        this.cities = city;
    }

    public List<CityDTO> getCity() {
        return cities;
    }
}
