package com.codesquad.coco.room.model;

import com.codesquad.coco.city.City;
import org.springframework.data.annotation.Id;

public class Location {

    @Id
    private Long id;

    private double latitude;
    private double longitude;
    private City city;

    public Location(double latitude, double longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public Long getId() {
        return id;
    }

    public double getLatitude() {
        return latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public City getCity() {
        return city;
    }

    @Override
    public String toString() {
        return "Location{" +
                "id=" + id +
                ", latitude=" + latitude +
                ", longitude=" + longitude +
                ", city=" + city +
                '}';
    }
}
