package com.team19.airbnb.dto;

public class NearDestination {
    private String image;
    private String destination;
    private String timeDistance;

    public NearDestination(String image, String destination, String timeDistance) {
        this.image = image;
        this.destination = destination;
        this.timeDistance = timeDistance;
    }

    public String getImage() {
        return image;
    }

    public String getDestination() {
        return destination;
    }

    public String getTimeDistance() {
        return timeDistance;
    }
}
