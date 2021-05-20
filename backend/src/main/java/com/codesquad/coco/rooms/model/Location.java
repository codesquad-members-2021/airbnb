package com.codesquad.coco.rooms.model;

import com.codesquad.coco.city.City;
import org.springframework.data.annotation.Id;

public class Location {

    @Id
    private Long id;

    private double latitude;
    private double longitude;
    private City city;

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
}
