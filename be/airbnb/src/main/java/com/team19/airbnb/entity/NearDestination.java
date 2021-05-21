package com.team19.airbnb.dto;

public class NearDestination {
    private String destination;
    private Double timeDistance; //시간 단위 (ex.0.5는 30분)
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
