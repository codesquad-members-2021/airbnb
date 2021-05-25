package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

public class Booking {

    @Id
    private Long id;

    private Long roomId;
    private Long userId;
    private String checkIn;
    private String checkOut;
    private int adult;
    private int child;
    private int baby;

    public Booking(Long id, Long roomId, Long userId, String checkIn, String checkOut, int adult, int child, int baby) {
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

    public String getCheckIn() {
        return checkIn;
    }

    public String getCheckOut() {
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

    @Override
    public String toString() {
        return "Booking{" +
                "id=" + id +
                ", roomId=" + roomId +
                ", userId=" + userId +
                ", checkIn=" + checkIn +
                ", checkOut=" + checkOut +
                ", adult=" + adult +
                ", child=" + child +
                ", baby=" + baby +
                '}';
    }
}
