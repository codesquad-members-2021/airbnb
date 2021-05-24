package com.team19.airbnb.entity;

import org.springframework.data.annotation.Id;

import java.time.LocalDate;

public class Booking {

    @Id
    private Long id;

    private Long room;

    private LocalDate checkIn;
    private LocalDate checkOut;

    Booking(Long id, Long room, LocalDate checkIn, LocalDate checkOut) {
        this.id = id;
        this.room = room;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
    }

    public static Booking create(Long id, Long room, LocalDate checkIn, LocalDate checkOut) {
        return new Booking(id, room, checkIn, checkOut);
    }

    public static Booking create(Long room, LocalDate checkIn, LocalDate checkOut) {
        return new Booking(null, room, checkIn, checkOut);
    }
}
