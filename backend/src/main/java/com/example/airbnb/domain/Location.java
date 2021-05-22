package com.example.airbnb.domain;

import org.springframework.data.annotation.Id;

public class Location {
    @Id
    private Long id;
    private Double latitude;
    private Double longitude;

    private String city;

    public Location(Long id, Double latitude, Double longitude, String city) {
        this.id = id;
        this.latitude = latitude;
        this.longitude = longitude;
        this.city = city;
    }

    public Location(Double latitude, Double longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public Long getId() {
        return id;
    }

    public Double getLatitude() {
        return latitude;
    }

    public Double getLongitude() {
        return longitude;
    }

    public String getCity() {
        return city;
    }

}
