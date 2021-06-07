package com.enolj.airbnb.web.dto;

public class SearchChargesRequestDTO {

    private String checkIn;
    private String checkOut;
    private double latitude;
    private double longitude;

    public SearchChargesRequestDTO(String checkIn, String checkOut, double latitude, double longitude) {
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public void setCheckIn(String checkIn) {
        this.checkIn = checkIn;
    }

    public void setCheckOut(String checkOut) {
        this.checkOut = checkOut;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    @Override
    public String toString() {
        return "SearchChargesRequestDTO{" +
                "checkIn='" + checkIn + '\'' +
                ", checkOut='" + checkOut + '\'' +
                ", latitude=" + latitude +
                ", longitude=" + longitude +
                '}';
    }
}

