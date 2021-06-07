package com.enolj.airbnb.web.dto;

public class SearchRequestDTO {

    private String checkIn;
    private String checkOut;
    private int minCharge;
    private int maxCharge;
    private int guest;
    private int kid;
    private double latitude;
    private double longitude;

    public SearchRequestDTO(String checkIn, String checkOut, int minCharge, int maxCharge, int guest, int kid, double latitude, double longitude) {
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.minCharge = minCharge;
        this.maxCharge = maxCharge;
        this.guest = guest;
        this.kid = kid;
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public void setCheckIn(String checkIn) {
        this.checkIn = checkIn;
    }

    public void setCheckOut(String checkOut) {
        this.checkOut = checkOut;
    }

    public void setMinCharge(int minCharge) {
        this.minCharge = minCharge;
    }

    public int getMinCharge() {
        return minCharge;
    }

    public void setMaxCharge(int maxCharge) {
        this.maxCharge = maxCharge;
    }

    public int getMaxCharge() {
        return maxCharge;
    }

    public void setGuest(int guest) {
        this.guest = guest;
    }

    public void setKid(int kid) {
        this.kid = kid;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public double getLongitude() {
        return longitude;
    }

    @Override
    public String toString() {
        return "SearchRequestDTO{" +
                "checkIn='" + checkIn + '\'' +
                ", checkOut='" + checkOut + '\'' +
                ", minCharge=" + minCharge +
                ", maxCharge=" + maxCharge +
                ", quest=" + guest +
                ", kid=" + kid +
                ", latitude=" + latitude +
                ", longitude=" + longitude +
                '}';
    }
}
