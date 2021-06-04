package com.codesquad.airbnb.dao;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateDeserializer;

import java.time.LocalDate;

public class GetPropertyModel {

    private Long locationId;

    @JsonDeserialize(using = LocalDateDeserializer.class)
    private LocalDate checkIn;

    @JsonDeserialize(using = LocalDateDeserializer.class)
    private LocalDate checkOut;

    private int minPrice = 0;
    private int maxPrice = 1000000;
    private int adult;
    private int children;
    private int infant;

    public GetPropertyModel() {
    }

    public Long getLocationId() {
        return locationId;
    }

    public LocalDate getCheckIn() {
        return checkIn;
    }

    public LocalDate getCheckOut() {
        return checkOut;
    }

    public int getMinPrice() {
        return minPrice;
    }

    public int getMaxPrice() {
        return maxPrice;
    }

    public int getAdult() {
        return adult;
    }

    public int getChildren() {
        return children;
    }

    public int getInfant() {
        return infant;
    }
}
