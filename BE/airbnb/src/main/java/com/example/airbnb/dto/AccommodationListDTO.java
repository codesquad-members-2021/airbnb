package com.example.airbnb.dto;

import java.util.List;

public class AccommodationListDTO {
    List<AccommodationDTO> accommodationList;

    public AccommodationListDTO(List<AccommodationDTO> accommodationList) {
        this.accommodationList = accommodationList;
    }

    public List<AccommodationDTO> getAccommodationList() {
        return accommodationList;
    }

    public void setAccommodationList(List<AccommodationDTO> accommodationList) {
        this.accommodationList = accommodationList;
    }
}
