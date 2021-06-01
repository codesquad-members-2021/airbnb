package mj.airbnb.web.dto;

import mj.airbnb.domain.reservation.Reservation;

import java.time.LocalDate;

public class ReservationResponseDto {

    private Long reservationId;
    private String name;
    private String address;
    private String description;
    private LocalDate checkInDate;
    private LocalDate checkOutDate;
    private String mainImageUrl;

    public ReservationResponseDto(Reservation reservation) {
        this.reservationId = reservation.getId();
        this.name = reservation.getAccommodationName();
        this.address = reservation.getAccommodationAddress();
        this.description = reservation.getAccommodationDescription();
        this.checkInDate = reservation.getCheckInDate();
        this.checkOutDate = reservation.getCheckOutDate();
        this.mainImageUrl = reservation.getAccommodationMainImageUrl();
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

    public String getMainImageUrl() {
        return mainImageUrl;
    }

    public Long getReservationId() {
        return reservationId;
    }

    public void setReservationId(Long reservationId) {
        this.reservationId = reservationId;
    }
}
