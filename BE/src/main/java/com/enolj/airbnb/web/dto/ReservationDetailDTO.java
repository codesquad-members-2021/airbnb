package com.enolj.airbnb.web.dto;

import com.enolj.airbnb.domain.house.House;
import com.enolj.airbnb.domain.join.Join;

import java.util.List;

import static com.enolj.airbnb.web.dto.Description.createDescription;

public class ReservationDetailDTO {

    private final Long id;
    private final List<String> images;
    private final String location;
    private final String name;
    private final String checkIn;
    private final String checkOut;
    private final Description description;

    public ReservationDetailDTO(Long id, List<String> images, String name, String checkIn, String checkOut, Description description) {
        this.id = id;
        this.images = images;
        this.location = "서초구, 서울, 한국";
        this.name = name;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.description = description;
    }

    public static ReservationDetailDTO createReservationDetailDTO(House house, List<String> images, Join join) {
        return new ReservationDetailDTO(house.getId(), images, house.getName(), join.getCheckInTime(), join.getCheckOutTime(), createDescription(house, join));
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
