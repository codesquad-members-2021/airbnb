package com.codesquad.coco.rooms.model.dto;

public class LocationDTO {

    private double latitude;
    private double longitude;

    public LocationDTO(double latitude, double longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public double getLatitude() {
        return latitude;
    }

    public double getLongitude() {
        return longitude;
    }
}
