package com.enolj.airbnb.web.dto;

public class ReservationResponseDTO {

    private final Long id;
    private final String image;
    private final String date;
    private final String location;
    private final String name;

    public ReservationResponseDTO(Long id, String image, String date, String location, String name) {
        this.id = id;
        this.image = image;
        this.date = date;
        this.location = location;
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public String getImage() {
        return image;
    }

    public String getDate() {
        return date;
    }

    public String getLocation() {
        return location;
    }

    public String getName() {
        return name;
    }
}
