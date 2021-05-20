package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

import java.time.LocalDateTime;

public class Booking {
    @Id
    private Long id;
    private LocalDateTime checkIn;
    private LocalDateTime checkOut;
    private int adult;
    private int child;
    private int baby;
    private int total;

    public Booking(Long id, LocalDateTime checkIn, LocalDateTime checkOut, int adult, int child, int baby, int total) {
        this.id = id;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.adult = adult;
        this.child = child;
        this.baby = baby;
        this.total = total;
    }
}
