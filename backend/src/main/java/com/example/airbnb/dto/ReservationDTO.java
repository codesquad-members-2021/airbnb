package com.example.airbnb.dto;

import java.time.LocalDate;

public class ReservationDTO {
    private Long reservationId;
    private Long roomId;
    private LocalDate checkIn;
    private LocalDate checkOut;
    private int totalPrice;
    private int numberOfGuest;

    public ReservationDTO(Long reservationId, Long roomId, LocalDate checkIn, LocalDate checkOut, int totalPrice, int numberOfGuest) {
        this.reservationId = reservationId;
        this.roomId = roomId;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.totalPrice = totalPrice;
        this.numberOfGuest = numberOfGuest;
    }

    public Long getReservationId() {
        return reservationId;
    }

    public Long getRoomId() {
        return roomId;
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

    public int getNumberOfGuest() {
        return numberOfGuest;
    }

}
