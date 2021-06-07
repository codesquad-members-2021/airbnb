package com.enolj.airbnb.web.dto;

import com.enolj.airbnb.domain.house.House;
import com.enolj.airbnb.domain.image.Image;
import com.enolj.airbnb.domain.join.Join;

import java.time.LocalDate;

public class ReservationResponseDTO {

    private final Long id;
    private final String image;
    private final String date;
    private final String location;
    private final String name;

    public ReservationResponseDTO(Long id, String image, LocalDate checkIn, LocalDate checkOut, String name) {
        this.id = id;
        this.image = image;
        this.date = checkIn + " = " + checkOut;
        this.location = "서초구의 아파트 전체";
        this.name = name;
    }

    public static ReservationResponseDTO createReservationResponseDTO(House house, Join join, Image image) {
        return new ReservationResponseDTO(house.getId(), image.getUrl(), join.getCheckIn(), join.getCheckOut(), house.getName());
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
