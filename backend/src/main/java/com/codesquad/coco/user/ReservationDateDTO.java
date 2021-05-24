package com.codesquad.coco.user;

import java.time.LocalDate;

public class ReservationDateDTO {

    private LocalDate checkIn;
    private LocalDate checkOut;

    public ReservationDateDTO(LocalDate checkIn, LocalDate checkOut) {
        this.checkIn = checkIn;
        this.checkOut = checkOut;
    }

    public LocalDate getCheckIn() {
        return checkIn;
    }

    public LocalDate getCheckOut() {
        return checkOut;
    }
}
