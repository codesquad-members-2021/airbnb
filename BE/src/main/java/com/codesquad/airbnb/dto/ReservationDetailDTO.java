package com.codesquad.airbnb.dto;

import java.time.LocalDate;

public class ReservationDetailDTO {

    private Long id;
    private String location;
    private String image;
    private String propertyTitle;
    private LocalDate checkIn;
    private LocalDate checkOut;
    private String hostName;
    private int totalPrice;
    private int guestCount;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getPropertyTitle() {
        return propertyTitle;
    }

    public void setPropertyTitle(String propertyTitle) {
        this.propertyTitle = propertyTitle;
    }

    public LocalDate getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(LocalDate checkIn) {
        this.checkIn = checkIn;
    }

    public LocalDate getCheckOut() {
        return checkOut;
    }

    public void setCheckOut(LocalDate checkOut) {
        this.checkOut = checkOut;
    }

    public String getHostName() {
        return hostName;
    }

    public void setHostName(String hostName) {
        this.hostName = hostName;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getGuestCount() {
        return guestCount;
    }

    public void setGuestCount(int guestCount) {
        this.guestCount = guestCount;
    }

    @Override
    public String toString() {
        return "ReservationDetailDTO{" +
                "id=" + id +
                ", location='" + location + '\'' +
                ", image='" + image + '\'' +
                ", propertyTitle='" + propertyTitle + '\'' +
                ", checkIn=" + checkIn +
                ", checkOut=" + checkOut +
                ", hostName='" + hostName + '\'' +
                ", totalPrice=" + totalPrice +
                ", guestCount=" + guestCount +
                '}';
    }
}
