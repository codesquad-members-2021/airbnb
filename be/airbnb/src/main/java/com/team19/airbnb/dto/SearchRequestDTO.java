package com.team19.airbnb.dto;

import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.time.LocalDate;

public class SearchRequestDTO {

    private String location;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate checkIn;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate checkOut;

    private BigDecimal minPrice;
    private BigDecimal maxPrice;
    private Integer guest; //adult + child , toddler x

    public SearchRequestDTO(String location,
                            LocalDate checkIn, LocalDate checkOut,
                            BigDecimal minPrice, BigDecimal maxPrice,
                            int guest) {
        this.location = location;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.minPrice = minPrice;
        this.maxPrice = maxPrice;
        this.guest = guest;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setCheckIn(LocalDate checkIn) {
        this.checkIn = checkIn;
    }

    public void setCheckOut(LocalDate checkOut) {
        this.checkOut = checkOut;
    }

    public void setMinPrice(BigDecimal minPrice) {
        this.minPrice = minPrice;
    }

    public void setMaxPrice(BigDecimal maxPrice) {
        this.maxPrice = maxPrice;
    }

    public void setGuest(Integer guest) {
        this.guest = guest;
    }
}
