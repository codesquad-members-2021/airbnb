package com.example.airbnb.domain;

import org.springframework.data.annotation.Id;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class Reservation {

    @Id
    private final Long id;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private final LocalDate checkIn;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private final LocalDate checkOut;
    private final int totalPrice;
    private final int adult;
    private final int child;
    private final int baby;

    private final Long user;
    private final Long room;

    public Reservation(Long id, LocalDate checkIn, LocalDate checkOut, int totalPrice, int adult, int child, int baby, Long user, Long room) {
        this.id = id;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.totalPrice = totalPrice;
        this.adult = adult;
        this.child = child;
        this.baby = baby;
        this.user = user;
        this.room = room;
    }

    public Long getId() {
        return id;
    }

    public LocalDate getCheckIn() {
        return checkIn;
    }

    public LocalDate getCheckOut() {
        return checkOut;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public int getAdult() {
        return adult;
    }

    public int getChild() {
        return child;
    }

    public int getBaby() {
        return baby;
    }

    public Long getUser() {
        return user;
    }

    public Long getRoom() {
        return room;
    }

}
