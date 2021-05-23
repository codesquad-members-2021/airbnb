package com.codesquad.coco.room.model.dto;

import com.codesquad.coco.utils.LocalDateConvertor;

import java.beans.ConstructorProperties;
import java.time.LocalDate;

public class SearchPriceDTO {

    private static final String DEFAULT_CITY_NAME = "서울";
    private static final LocalDate DEFAULT_CHECK_IN = LocalDate.of(1993, 6, 11);
    private static final LocalDate DEFAULT_CHECK_OUT = LocalDate.of(2021, 10, 11);

    protected LocalDate checkIn;
    protected LocalDate checkOut;
    protected String cityName;

    @ConstructorProperties({"check-in", "check-out", "city-name"})
    public SearchPriceDTO(String checkIn, String checkOut, String cityName) {
        this.checkIn = checkIn != null ? LocalDateConvertor.StringToLocalDate(checkIn) : DEFAULT_CHECK_IN;
        this.checkOut = checkOut != null ? LocalDateConvertor.StringToLocalDate(checkOut) : DEFAULT_CHECK_OUT;
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
