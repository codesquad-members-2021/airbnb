package com.example.airbnb.dto;

public class RoomDTO {
    private Long id;
    private String title;
    private String description;
    private int pricePerDay;
    private String roomType;
    private int bed;
    private int maxGuest;
    private int bathroom;

    public RoomDTO(Long id, String title, String description, int pricePerDay, String roomType, int bed, int maxGuest, int bathroom) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.pricePerDay = pricePerDay;
        this.roomType = roomType;
        this.bed = bed;
        this.maxGuest = maxGuest;
        this.bathroom = bathroom;
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

}
