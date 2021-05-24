package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

import java.util.Date;

public class Booking {

    @Id
    private Long id;

    private Long roomId;
    private Long userId;
    private Date checkIn;
    private Date checkOut;
    private int adult;
    private int child;
    private int baby;

    public Booking(Long id, Long roomId, Long userId, Date checkIn, Date checkOut, int adult, int child, int baby) {
        this.id = id;
        this.roomId = roomId;
        this.userId = userId;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.adult = adult;
        this.child = child;
        this.baby = baby;
    }

    public Long getRoomId() {
        return roomId;
    }

    public Long getUserId() {
        return userId;
    }

    public Long getId() {
        return id;
    }

    public Date getCheckIn() {
        return checkIn;
    }

    public Date getCheckOut() {
        return checkOut;
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

    public int getTotal() {
        return adult + child;
    }
}
