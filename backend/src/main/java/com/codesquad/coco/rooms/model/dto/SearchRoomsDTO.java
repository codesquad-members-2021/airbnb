package com.codesquad.coco.rooms.model.dto;

import com.codesquad.coco.rooms.model.Guest;
import com.codesquad.coco.rooms.model.Money;

import java.beans.ConstructorProperties;
import java.time.LocalDate;

public class SearchRoomsDTO extends SearchPriceDTO {

    private Guest guest;
    private Money priceMin;
    private Money priceMax;

    @ConstructorProperties({"check-in", "check-out", "city-name", "adult", "child", "baby", "price-min", "price-max"})
    public SearchRoomsDTO(String checkIn, String checkOut, String cityName,
                          int adult, int child, int baby,
                          int priceMin, int priceMax) {
        super(checkIn, checkOut, cityName);
        this.guest = new Guest(adult, child, baby);
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

    public int getAdult() {
        return guest.getAdult();
    }

    public int getChild() {
        return guest.getChild();
    }

    public int getBaby() {
        return guest.getBaby();
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
