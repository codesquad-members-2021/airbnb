package com.team19.airbnb.entity;

public class NearDestination {

    private String destination;
    private Double timeDistance;
    private String image;

    public NearDestination(String destination, Double timeDistance, String image) {
        this.destination = destination;
        this.timeDistance = timeDistance;
        this.image = image;
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
