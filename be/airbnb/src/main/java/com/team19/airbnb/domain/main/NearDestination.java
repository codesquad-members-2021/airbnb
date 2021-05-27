package com.team19.airbnb.domain.main;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.data.annotation.Id;

import java.sql.Time;
import java.time.LocalTime;

public class NearDestination {

    @Id
    private Long id;

    private String destination;

    @JsonFormat(pattern = "HH:mm")
    private LocalTime timeDistance;
    private String image;

    NearDestination(Long id, String destination, LocalTime timeDistance, String image) {
        this.id = id;
        this.destination = destination;
        this.timeDistance = timeDistance;
        this.image = image;
    }

    public static NearDestination create(Long id, String destination, LocalTime timeDistance, String image) {
        return new NearDestination(id, destination, timeDistance, image);
    }

    public String getDestination() {
        return destination;
    }

    public LocalTime getTimeDistance() {
        return timeDistance;
    }

    public String getImage() {
        return image;
    }
}
