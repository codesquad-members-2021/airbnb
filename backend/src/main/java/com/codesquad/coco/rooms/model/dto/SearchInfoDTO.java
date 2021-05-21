package com.codesquad.coco.rooms.model.dto;


import org.springframework.format.annotation.DateTimeFormat;

import java.beans.ConstructorProperties;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class SearchInfoDTO {

    private static String DEFAULT_CITY_NAME = "서울";

    private LocalDate checkIn;

    private LocalDate checkOut;

    private String cityName;

    @ConstructorProperties({"check-in","check-out","city-name"})
    public SearchInfoDTO(String checkIn, String checkOut, String cityName) {
        this.checkIn = checkIn != null ? LocalDate.parse(checkIn, DateTimeFormatter.ISO_DATE) : LocalDate.of(1993,6,11);
        this.checkOut = checkOut != null ? LocalDate.parse(checkOut, DateTimeFormatter.ISO_DATE) : LocalDate.of(2021,10,11);
        this.cityName = cityName != null ? cityName : DEFAULT_CITY_NAME;
    }

    public LocalDate getCheckIn() {
        return checkIn;
    }

    public LocalDate getCheckOut() {
        return checkOut;
    }

    public String getCityName() {
        return cityName;
    }

    @Override
    public String toString() {
        return "SearchInfoDTO{" +
                "checkIn=" + checkIn +
                ", checkOut=" + checkOut +
                ", cityName='" + cityName + '\'' +
                '}';
    }
}
