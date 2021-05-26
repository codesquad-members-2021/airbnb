package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

public class Booking {

    @Id
    private Long id;

    private Long roomId;
    private Long userId;
    private String checkIn;
    private String checkOut;
    private int numberOfPeople;
    private int totalPrice;

   public Booking(Long roomId, Long userId, String checkIn, String checkOut, int numberOfPeople, int totalPrice) {
        this.roomId = roomId;
        this.userId = userId;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.numberOfPeople = numberOfPeople;
        this.totalPrice = totalPrice;
    }

    public Booking(Long id, Long roomId, Long userId, String checkIn, String checkOut, int numberOfPeople, int totalPrice) {
        this.id = id;
        this.roomId = roomId;
        this.userId = userId;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.numberOfPeople = numberOfPeople;
        this.totalPrice = totalPrice;
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

    public int getNumberOfPeople() {
        return numberOfPeople;
    }
    public int getTotalPrice() {
        return totalPrice;
    }

    @Override
    public String toString() {
        return "Booking{" +
                "id=" + id +
                ", roomId=" + roomId +
                ", userId=" + userId +
                ", checkIn=" + checkIn +
                ", checkOut=" + checkOut +
                ", numberOfPeople=" + numberOfPeople +
                ", totalPrice=" + totalPrice +
                '}';
    }
}
