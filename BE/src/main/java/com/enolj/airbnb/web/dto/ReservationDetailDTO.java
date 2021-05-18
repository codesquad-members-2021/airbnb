package com.enolj.airbnb.web.dto;

import java.util.List;

public class ReservationDetailDTO {

    private final Long id;
    private final List<String> images;
    private final String location;
    private final String name;
    private final String checkIn;
    private final String checkOut;
    private final Description description;

    public ReservationDetailDTO(Long id, List<String> images, String location, String name, String checkIn, String checkOut, Description description) {
        this.id = id;
        this.images = images;
        this.location = location;
        this.name = name;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.description = description;
    }

    public Long getId() {
        return id;
    }

    public List<String> getImages() {
        return images;
    }

    public String getLocation() {
        return location;
    }

    public String getName() {
        return name;
    }

    public String getCheckIn() {
        return checkIn;
    }

    public String getCheckOut() {
        return checkOut;
    }

    public Description getDescription() {
        return description;
    }
}
