package com.team19.airbnb.entity;

public class Location {

    private String address;
    private Double latitude;
    private Double longitude;

    Location(String address, Double latitude, Double longitude) {
        this.address = address;
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public Location create(String address, Double latitude, Double longitude) {
        return new Location(address, latitude, longitude);
    }
}
