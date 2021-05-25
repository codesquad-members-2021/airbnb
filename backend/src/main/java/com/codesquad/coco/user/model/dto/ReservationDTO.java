package com.codesquad.coco.user.model.dto;

import javax.validation.constraints.NotNull;
import java.time.LocalDate;

public class ReservationDTO {

    @NotNull
    private LocalDate checkIn;

    @NotNull
    private LocalDate checkOut;

    @NotNull
    private int totalPrice;

    @NotNull
    private int adult;

    @NotNull
    private int child;

    @NotNull
    private int baby;

    public LocalDate getCheckIn() {
        return checkIn;
    }

    public LocalDate getCheckOut() {
        return checkOut;
    }

    public int getTotalPrice() {
        return totalPrice;
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

    @Override
    public String toString() {
        return "ReservationDTO{" +
                "checkIn=" + checkIn +
                ", checkOut=" + checkOut +
                ", totalPrice=" + totalPrice +
                ", adult=" + adult +
                ", child=" + child +
                ", baby=" + baby +
                '}';
    }
}
