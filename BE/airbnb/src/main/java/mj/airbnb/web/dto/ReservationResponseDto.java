package mj.airbnb.web.dto;

import mj.airbnb.domain.accommodation.Accommodation;
import mj.airbnb.domain.reservation.Reservation;

import java.math.BigDecimal;
import java.time.LocalDate;

public class ReservationResponseDto {

    private String name;
    private String address;
    private String description;
    private LocalDate checkInDate;
    private LocalDate checkOutDate;

    public ReservationResponseDto(Reservation reservation) {
        this.name = reservation.getAccommodationName();
        this.address = reservation.getAccommodationAddress();
        this.description = reservation.getAccommodationDescription();
        this.checkInDate = reservation.getCheckInDate();
        this.checkOutDate = reservation.getCheckOutDate();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDate getCheckInDate() {
        return checkInDate;
    }

    public void setCheckInDate(LocalDate checkInDate) {
        this.checkInDate = checkInDate;
    }

    public LocalDate getCheckOutDate() {
        return checkOutDate;
    }

    public void setCheckOutDate(LocalDate checkOutDate) {
        this.checkOutDate = checkOutDate;
    }
}
