package com.example.airbnb.domain;

import org.springframework.data.annotation.Id;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

public class Reservation {

    @Id
    private final Long id;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private final LocalDate checkIn;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private final LocalDate checkOut;

    private final int totalPrice;
    private final int numberOfGuest;

    public Reservation(Long id, LocalDate checkIn, LocalDate checkOut, int totalPrice, int numberOfGuest) {
        this.id = id;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.totalPrice = totalPrice;
        this.numberOfGuest = numberOfGuest;

    }

}
