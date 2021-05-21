package com.team19.airbnb.entity;

import org.springframework.data.annotation.Id;

import java.time.LocalDate;

public class Booking {

    @Id
    private Long id;

    private LocalDate checkIn;
    private LocalDate checkOut;
    private String userId;
    private String roomId;

    Booking(Long id, LocalDate checkIn, LocalDate checkOut, String userId, String roomId) {
        this.id = id;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.userId = userId;
        this.roomId = roomId;
    }

    public Booking create(Long id, LocalDate checkIn, LocalDate checkOut, String userId, String roomId) {
        return new Booking(id, checkIn, checkOut, userId, roomId);
    }
}
