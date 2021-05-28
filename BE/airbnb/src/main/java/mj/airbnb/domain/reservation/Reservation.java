package mj.airbnb.domain.reservation;

import mj.airbnb.domain.accommodation.Accommodation;

import java.time.LocalDate;

public class Reservation {

    private Long id;
    private LocalDate checkInDate;
    private LocalDate checkOutDate;
    private Long accommodationId;
    private Long userId;

    private String accommodationName;
    private String accommodationAddress;
    private String accommodationDescription;

    public Reservation() {

    }

    public Reservation(Accommodation accommodation) {
        this.accommodationName = accommodation.getName();
        this.accommodationAddress = accommodation.getAddress();
        this.accommodationDescription = accommodation.getDescription();
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

    public Long getAccommodationId() {
        return accommodationId;
    }

    public void setAccommodationId(Long accommodationId) {
        this.accommodationId = accommodationId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getAccommodationName() {
        return accommodationName;
    }

    public void setAccommodationName(String accommodationName) {
        this.accommodationName = accommodationName;
    }

    public String getAccommodationAddress() {
        return accommodationAddress;
    }

    public void setAccommodationAddress(String accommodationAddress) {
        this.accommodationAddress = accommodationAddress;
    }

    public String getAccommodationDescription() {
        return accommodationDescription;
    }

    public void setAccommodationDescription(String accommodationDescription) {
        this.accommodationDescription = accommodationDescription;
    }
}
