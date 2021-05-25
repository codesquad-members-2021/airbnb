package com.example.airbnb.domain;

public class Room {
    private Long id;
    private String title;
    private String description;
    private int pricePerDay;
    private String roomType;
    private int bed;
    private int maxGuest;
    private int bathroom;

    private Long location;

    public Room(Long id, String title, String description, int pricePerDay, String roomType, int bed, int maxGuest, int bathroom, Long location) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.pricePerDay = pricePerDay;
        this.roomType = roomType;
        this.bed = bed;
        this.maxGuest = maxGuest;
        this.bathroom = bathroom;
        this.location = location;
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public int getPricePerDay() {
        return pricePerDay;
    }

    public String getRoomType() {
        return roomType;
    }

    public int getBed() {
        return bed;
    }

    public int getMaxGuest() {
        return maxGuest;
    }

    public int getBathroom() {
        return bathroom;
    }

    public Long getLocation() {
        return location;
    }

}
