package com.example.airbnb.dto;

import com.example.airbnb.utils.SearchConditions;

import java.util.List;

public class AccommodationListDTO {

    List<AccommodationDTO> accommodationList;
    SearchConditions searchConditions;

    public AccommodationListDTO(List<AccommodationDTO> accommodationList, SearchConditions conditions) {
        this.accommodationList = accommodationList;
        this.searchConditions = conditions;
    }

    public AccommodationListDTO(List<AccommodationDTO> accommodationList) {
        this.accommodationList = accommodationList;
    }

    public List<AccommodationDTO> getAccommodationList() {
        return accommodationList;
    }

    public void setAccommodationList(List<AccommodationDTO> accommodationList) {
        this.accommodationList = accommodationList;
    }

    public SearchConditions getSearchConditions() {
        return searchConditions;
    }

    public void setSearchConditions(SearchConditions searchConditions) {
        this.searchConditions = searchConditions;
    }
}
