package com.team19.airbnb.entity;

import org.springframework.data.annotation.Id;

import java.time.LocalDate;

public class Booking {

    @Id
    private Long id;

    private Long user;

    private LocalDate checkIn;
    private LocalDate checkOut;

    Booking(Long id, Long user, LocalDate checkIn, LocalDate checkOut) {
        this.id = id;
        this.user = user;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
    }

    public Booking create(Long user, LocalDate checkIn, LocalDate checkOut) {
        return new Booking(null, user, checkIn, checkOut);
    }
}
