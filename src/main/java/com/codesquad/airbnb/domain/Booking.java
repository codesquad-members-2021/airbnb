package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

import java.util.Date;

public class Booking {
    @Id
    private Long id;

    private Date checkIn;
    private Date checkOut;
    private int adult;
    private int child;
    private int baby;
    private int total;

    public Booking(Long id, Date checkIn, Date checkOut, int adult, int child, int baby, int total) {
        this.id = id;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.adult = adult;
        this.child = child;
        this.baby = baby;
        this.total = total;
    }

    public Long getId() {
        return id;
    }
}
