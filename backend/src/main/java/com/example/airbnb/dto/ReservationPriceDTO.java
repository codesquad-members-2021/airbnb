package com.example.airbnb.dto;

import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

public class ReservationPriceDTO {

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate checkIn;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate checkOut;
    private String cityName;

    public ReservationPriceDTO(LocalDate checkIn, LocalDate checkOut, String cityName) {
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.cityName = cityName;
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

}
