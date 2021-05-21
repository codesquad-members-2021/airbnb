package com.example.airbnb.dto;

public class LocationDTO {
    private Double latitude;
    private Double longitude;

    public LocationDTO(Double latitude, Double longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public Double getLatitude() {
        return latitude;
    }

    public Double getLongitude() {
        return longitude;
    }
}
