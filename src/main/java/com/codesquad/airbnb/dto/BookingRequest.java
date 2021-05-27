package com.codesquad.airbnb.dto;

import com.codesquad.airbnb.domain.Booking;

public class BookingRequest {

    private Long roomId;
    private Long userId;
    private String checkIn;
    private String checkOut;
    private int numberOfPeople;
    private int totalPrice;

    public BookingRequest() {
    }

    public BookingRequest(Long roomId, Long userId, String checkIn, String checkOut, int numberOfPeople, int totalPrice) {
        this.userId = userId;
        this.roomId = roomId;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.numberOfPeople = numberOfPeople;
        this.totalPrice = totalPrice;
    }

    public Booking toBooking() {
        return new Booking(roomId, userId, checkIn, checkOut, numberOfPeople, totalPrice);
    }

    public Long getUserId() {
        return userId;
    }

    public Long getRoomId() {
        return roomId;
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
}
