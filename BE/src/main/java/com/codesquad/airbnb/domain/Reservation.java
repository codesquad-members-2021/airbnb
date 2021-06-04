package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

import java.time.LocalDate;

public class Reservation {

    @Id
    private Long id;
    private LocalDate checkIn;
    private LocalDate checkOut;
    private int totalPrice;
    private int guestCount;
    private Long userId;
    private Long propertyId;

    public Reservation() {
    }

    public Reservation(LocalDate checkIn, LocalDate checkOut, int totalPrice, int guestCount, Long userId, Long propertyId) {
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.totalPrice = totalPrice;
        this.guestCount = guestCount;
        this.userId = userId;
        this.propertyId = propertyId;
    }

    public Long getId() {
        return id;
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

    public int getGuestCount() {
        return guestCount;
    }

    public Long getUserId() {
        return userId;
    }

    public Long getPropertyId() {
        return propertyId;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Reservation{" +
                "id=" + id +
                ", checkIn=" + checkIn +
                ", checkOut=" + checkOut +
                ", totalPrice=" + totalPrice +
                ", guestCount=" + guestCount +
                ", userId=" + userId +
                ", propertyId=" + propertyId +
                '}';
    }
}
