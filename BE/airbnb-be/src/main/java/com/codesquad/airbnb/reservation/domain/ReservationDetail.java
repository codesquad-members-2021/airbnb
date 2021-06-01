package com.codesquad.airbnb.reservation.domain;

import java.time.LocalDate;
import java.util.Objects;

public class ReservationDetail {
    private static final int DEFAULT_NIGHTS = 1;

    private LocalDate checkinDate;
    private LocalDate checkoutDate;
    private Integer numberOfAdults;
    private Integer numberOfChildren;
    private Integer numberOfBabies;

    protected ReservationDetail(LocalDate checkinDate, LocalDate checkoutDate, Integer numberOfAdults, Integer numberOfChildren, Integer numberOfBabies) {
        this.checkinDate = checkinDate;
        this.checkoutDate = checkoutDate;
        this.numberOfAdults = numberOfAdults;
        this.numberOfChildren = numberOfChildren;
        this.numberOfBabies = numberOfBabies;
    }

    public static ReservationDetailBuilder builder() {
        return ReservationDetailBuilder.aReservationDetail();
    }

    public int nights() {
        if (checkinDate != null && checkoutDate != null) {
            return checkinDate.until(checkoutDate).getDays();
        }

        return DEFAULT_NIGHTS;
    }

    public LocalDate getCheckinDate() {
        return checkinDate;
    }

    public LocalDate getCheckoutDate() {
        return checkoutDate;
    }

    public Integer getNumberOfAdults() {
        return numberOfAdults;
    }

    public Integer getNumberOfChildren() {
        return numberOfChildren;
    }

    public Integer getNumberOfBabies() {
        return numberOfBabies;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ReservationDetail that = (ReservationDetail) o;
        return Objects.equals(checkinDate, that.checkinDate) && Objects.equals(checkoutDate, that.checkoutDate) && Objects.equals(numberOfAdults, that.numberOfAdults) && Objects.equals(numberOfChildren, that.numberOfChildren) && Objects.equals(numberOfBabies, that.numberOfBabies);
    }

    @Override
    public int hashCode() {
        return Objects.hash(checkinDate, checkoutDate, numberOfAdults, numberOfChildren, numberOfBabies);
    }

    @Override
    public String toString() {
        return "ReservationDetail{" +
                       "checkinDate=" + checkinDate +
                       ", checkoutDate=" + checkoutDate +
                       ", numberOfAdults=" + numberOfAdults +
                       ", numberOfChildren=" + numberOfChildren +
                       ", numberOfBabies=" + numberOfBabies +
                       '}';
    }
}
