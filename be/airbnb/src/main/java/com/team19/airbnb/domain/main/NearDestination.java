package com.team19.airbnb.domain.main;

import org.springframework.data.annotation.Id;

public class NearDestination {

    @Id
    private Long id;

    private String destination;
    private Double timeDistance;
    private String image;

    NearDestination(Long id, String destination, Double timeDistance, String image) {
        this.id = id;
        this.destination = destination;
        this.timeDistance = timeDistance;
        this.image = image;
    }

    public static NearDestination create(String destination, Double timeDistance, String image) {
        return new NearDestination(null, destination, timeDistance, image);
    }

    public String getDestination() {
        return destination;
    }

    public Double getTimeDistance() {
        return timeDistance;
    }

    public String getImage() {
        return image;
    }
}
