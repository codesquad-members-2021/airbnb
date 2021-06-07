package com.enolj.airbnb.web.dto;

import com.enolj.airbnb.domain.house.House;
import com.enolj.airbnb.domain.join.Join;
import com.enolj.airbnb.web.vo.Description;

import java.time.LocalDate;
import java.util.List;

import static com.enolj.airbnb.web.vo.Description.createDescription;

public class ReservationDetailDTO {

    private final Long id;
    private final List<String> images;
    private final String location;
    private final String name;
    private final String checkIn;
    private final String checkOut;
    private final Description description;

    public ReservationDetailDTO(Long id, List<String> images, String name, LocalDate checkIn, LocalDate checkOut, Description description) {
        this.id = id;
        this.images = images;
        this.location = "서초구, 서울, 한국";
        this.name = name;
        this.checkIn = checkIn.getYear() + "년 " + checkIn.getMonthValue() + "월 " + checkIn.getDayOfMonth() + "일 오후 4:00";
        this.checkOut = checkOut.getYear() + "년 " + checkOut.getMonthValue() + "월 " + checkOut.getDayOfMonth() + "일 오후 12:00";
        this.description = description;
    }

    public static ReservationDetailDTO createReservationDetailDTO(House house, List<String> images, Join join) {
        return new ReservationDetailDTO(house.getId(), images, house.getName(), join.getCheckIn(), join.getCheckOut(), createDescription(house, join));
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
