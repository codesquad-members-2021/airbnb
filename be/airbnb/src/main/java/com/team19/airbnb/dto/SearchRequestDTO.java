package com.team19.airbnb.dto;

import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

public class SearchRequestDTO {
    private String location;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate checkIn;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate checkOut;

    private String priceRange;
    private Integer guest; //adult + child , toddler x

    public SearchRequestDTO(String location,
                            LocalDate checkIn, LocalDate checkOut,
                            String priceRange,
                            int guest) {
        this.location = location;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.priceRange = priceRange;
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

    public void setPriceRange(String priceRange) {
        this.priceRange = priceRange;
    }

    public void setGuest(Integer guest) {
        this.guest = guest;
    }
}
