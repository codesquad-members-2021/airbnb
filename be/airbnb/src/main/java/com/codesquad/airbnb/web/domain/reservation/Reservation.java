package com.codesquad.airbnb.web.domain.reservation;

import lombok.Builder;
import lombok.Getter;

import java.time.LocalDate;

@Getter
@Builder
public class Reservation {
    private int id;
    private int guestId;
    private int roomId;
    private LocalDate checkinDate;
    private LocalDate checkoutDate;
    private int adultCount;
    private int childCount;
    private int infantCount;

    public void updateId(int newId) {
        this.id = newId;
    }
}
