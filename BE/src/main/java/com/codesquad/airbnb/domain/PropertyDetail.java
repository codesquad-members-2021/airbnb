package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

import java.time.LocalDate;

public class PropertyDetail {

    @Id
    private Long property_id;

    private String description;
    private String maxOccupancy;
    private int cleaningFee;
    private LocalDate occupiedDate;
    private int bedCount;
    private int bathCount;
    private String roomType;
    private int reviewCount;
    private double latitude;
    private double longitude;

    public Long getProperty_id() {
        return property_id;
    }

    public String getDescription() {
        return description;
    }

    public String getMaxOccupancy() {
        return maxOccupancy;
    }

    public int getCleaningFee() {
        return cleaningFee;
    }

    public LocalDate getOccupiedDate() {
        return occupiedDate;
    }

    public int getBedCount() {
        return bedCount;
    }

    public int getBathCount() {
        return bathCount;
    }

    public String getRoomType() {
        return roomType;
    }

    public int getReviewCount() {
        return reviewCount;
    }

    public double getLatitude() {
        return latitude;
    }

    public double getLongitude() {
        return longitude;
    }
}
