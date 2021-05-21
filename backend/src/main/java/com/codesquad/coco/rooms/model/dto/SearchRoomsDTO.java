package com.codesquad.coco.rooms.model.dto;

import com.codesquad.coco.rooms.model.Guest;
import com.codesquad.coco.rooms.model.Money;

import java.beans.ConstructorProperties;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class SearchRoomsDTO {

    private static String DEFAULT_CITY_NAME = "서울";

    private LocalDate checkIn;
    private LocalDate checkOut;
    private String cityName;
    private Guest guest;
    private Money priceMin;
    private Money priceMax;

    @ConstructorProperties({"check-in","check-out","city-name","price-min","price-max","adult","child","baby"})
    public SearchRoomsDTO(String checkIn, String checkOut, String cityName,
                          int adult,int child,int baby,
                          int priceMin, int priceMax) {
        this.checkIn = checkIn != null ? LocalDate.parse(checkIn, DateTimeFormatter.ISO_DATE) : LocalDate.of(1993,6,11);
        this.checkOut = checkOut != null ? LocalDate.parse(checkOut, DateTimeFormatter.ISO_DATE) : LocalDate.of(2021,10,11);
        this.cityName = cityName != null ? cityName : DEFAULT_CITY_NAME;
        this.guest = new Guest(adult,child,baby);
        this.priceMin = new Money(priceMin);
        this.priceMax = new Money(priceMax);
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

    public Guest getGuest() {
        return guest;
    }

    public int getPriceMin() {
        return priceMin.getMoney();
    }

    public int getPriceMax() {
        return priceMax.getMoney();
    }

    @Override
    public String toString() {
        return "SearchRoomsDTO{" +
                "checkIn=" + checkIn +
                ", checkOut=" + checkOut +
                ", cityName='" + cityName + '\'' +
                ", guest=" + guest +
                ", priceMin=" + priceMin +
                ", priceMax=" + priceMax +
                '}';
    }
}
