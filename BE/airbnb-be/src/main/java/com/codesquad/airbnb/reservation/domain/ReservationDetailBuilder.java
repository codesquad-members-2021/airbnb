package com.codesquad.airbnb.reservation.domain;

import java.time.LocalDate;

public final class ReservationDetailBuilder {
    private LocalDate checkinDate;
    private LocalDate checkoutDate;
    private Integer numberOfAdults;
    private Integer numberOfChildren;
    private Integer numberOfBabies;

    private ReservationDetailBuilder() {
    }

    public static ReservationDetailBuilder aReservationDetail() {
        return new ReservationDetailBuilder();
    }

    public ReservationDetailBuilder checkinDate(LocalDate checkinDate) {
        this.checkinDate = checkinDate;
        return this;
    }

    public ReservationDetailBuilder checkoutDate(LocalDate checkoutDate) {
        this.checkoutDate = checkoutDate;
        return this;
    }

    public ReservationDetailBuilder numberOfAdults(Integer numberOfAdults) {
        this.numberOfAdults = numberOfAdults;
        return this;
    }

    public ReservationDetailBuilder numberOfChildren(Integer numberOfChildren) {
        this.numberOfChildren = numberOfChildren;
        return this;
    }

    public ReservationDetailBuilder numberOfBabies(Integer numberOfBabies) {
        this.numberOfBabies = numberOfBabies;
        return this;
    }

    public ReservationDetail build() {
        return new ReservationDetail(checkinDate, checkoutDate, numberOfAdults, numberOfChildren, numberOfBabies);
    }
}
