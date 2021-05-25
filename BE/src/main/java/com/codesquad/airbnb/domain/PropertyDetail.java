package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

public class PropertyDetail {

    @Id
    private Long property_id;

    private String description;
    private int maxOccupancy;
    private int cleaningFee;
    private int bedCount;
    private int bathCount;
    private String roomType;
    private int reviewCount;
    private double latitude;
    private double longitude;
    private double rating;

    public PropertyDetail(Long property_id, String description, int maxOccupancy, int cleaningFee, int bedCount, int bathCount, String roomType, int reviewCount, double latitude, double longitude) {
        this.property_id = property_id;
        this.description = description;
        this.maxOccupancy = maxOccupancy;
        this.cleaningFee = cleaningFee;
        this.bedCount = bedCount;
        this.bathCount = bathCount;
        this.roomType = roomType;
        this.reviewCount = reviewCount;
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public Long getProperty_id() {
        return property_id;
    }

    public String getDescription() {
        return description;
    }

    public int getMaxOccupancy() {
        return maxOccupancy;
    }

    public int getCleaningFee() {
        return cleaningFee;
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

    public double getRating() {
        return rating;
    }

    @Override
    public String toString() {
        return "PropertyDetail{" +
                "property_id=" + property_id +
                ", description='" + description + '\'' +
                ", maxOccupancy=" + maxOccupancy +
                ", cleaningFee=" + cleaningFee +
                ", bedCount=" + bedCount +
                ", bathCount=" + bathCount +
                ", roomType='" + roomType + '\'' +
                ", reviewCount=" + reviewCount +
                ", latitude=" + latitude +
                ", longitude=" + longitude +
                '}';
    }
}
