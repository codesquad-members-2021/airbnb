package com.team19.airbnb.dto;

public class RoomDetailResponseDTO {
    // /rooms~ , /wishlist, /search
    private Long roomId;
    private String roomName;
    private String[] images;
    private float grade;
    private int reviewer;
    private String location;
    private int pricePerDay;
    private int totalPrice;
    private String roomType;
    private Host host;
    private String roomConfiguration;
    private String description;

    public RoomDetailResponseDTO(Long roomId, String roomName, String[] images, float grade, int reviewer, String location, int pricePerDay, int totalPrice, String roomType, Host host, String roomConfiguration, String description) {
        this.roomId = roomId;
        this.roomName = roomName;
        this.images = images;
        this.grade = grade;
        this.reviewer = reviewer;
        this.location = location;
        this.pricePerDay = pricePerDay;
        this.totalPrice = totalPrice;
        this.roomType = roomType;
        this.host = host;
        this.roomConfiguration = roomConfiguration;
        this.description = description;
    }

    public Long getRoomId() {
        return roomId;
    }

    public String getRoomName() {
        return roomName;
    }

    public String[] getImages() {
        return images;
    }

    public float getGrade() {
        return grade;
    }

    public int getReviewer() {
        return reviewer;
    }

    public String getLocation() {
        return location;
    }

    public int getPricePerDay() {
        return pricePerDay;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public String getRoomType() {
        return roomType;
    }

    public Host getHost() {
        return host;
    }

    public String getRoomConfiguration() {
        return roomConfiguration;
    }

    public String getDescription() {
        return description;
    }
}
