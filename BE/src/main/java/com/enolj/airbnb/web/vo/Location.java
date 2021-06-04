package com.enolj.airbnb.web.vo;

import com.enolj.airbnb.domain.house.House;

public class Location {

    private double latitude;
    private double longitude;

    public Location(double latitude, double longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public static Location createLocationByHouse(House house) {
        return new Location(house.getLatitude(), house.getLongitude());
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    @Override
    public String toString() {
        return "Location{" +
                "Latitude=" + latitude +
                ", longitude=" + longitude +
                '}';
    }
}
