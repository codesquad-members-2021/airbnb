package com.codesquad.airbnb.dto;

import java.time.LocalDate;

public class ReservationRequestDTO {

    private LocalDate checkIn;
    private LocalDate checkOut;
    private int guestCount;
    private int totalPrice;

    public LocalDate getCheckIn() {
        return checkIn;
    }

    public LocalDate getCheckOut() {
        return checkOut;
    }

    public int getGuestCount() {
        return guestCount;
    }

    public int getTotalPrice() {
        return totalPrice;
    }
}
