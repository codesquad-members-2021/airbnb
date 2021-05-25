package com.codesquad.airbnb.dto;

public class PropertyDetailDto {

    private String title;
    private String description;
    private String locationName;
    private String propertyType;
    private int maxOccupancy;
    private int cleaningFee;
    private int bedCount;
    private int bathCount;
    private int reviewCount;
    private int pricePerNight;
    private double latitude;
    private double longitude;
    private double rating;
    private HostDto host;

    public PropertyDetailDto(String title, String description, String locationName,
                             String propertyType, int maxOccupancy, int cleaningFee,
                             int bedCount, int bathCount, int reviewCount, int pricePerNight,
                             double latitude, double longitude, double rating, HostDto host) {
        this.title = title;
        this.description = description;
        this.locationName = locationName;
        this.propertyType = propertyType;
        this.maxOccupancy = maxOccupancy;
        this.cleaningFee = cleaningFee;
        this.bedCount = bedCount;
        this.bathCount = bathCount;
        this.reviewCount = reviewCount;
        this.pricePerNight = pricePerNight;
        this.latitude = latitude;
        this.longitude = longitude;
        this.rating = rating;
        this.host = host;
    }

    public static PropertyDetailDto of (String title, String description, String locationName,
                      String propertyType, int maxOccupancy, int cleaningFee,
                      int bedCount, int bathCount, int reviewCount, int pricePerNight,
                      double latitude, double longitude, double rating, HostDto host) {
        return new PropertyDetailDto(title, description, locationName, propertyType, maxOccupancy,
                cleaningFee, bedCount, bathCount, reviewCount, pricePerNight, latitude, longitude, rating, host);
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public String getLocationName() {
        return locationName;
    }

    public String getPropertyType() {
        return propertyType;
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

    public int getReviewCount() {
        return reviewCount;
    }

    public int getPricePerNight() {
        return pricePerNight;
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

    public HostDto getHost() {
        return host;
    }

    @Override
    public String toString() {
        return "{" +
                "title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", locationName='" + locationName + '\'' +
                ", propertyType='" + propertyType + '\'' +
                ", maxOccupancy=" + maxOccupancy +
                ", cleaningFee=" + cleaningFee +
                ", bedCount=" + bedCount +
                ", bathCount=" + bathCount +
                ", reviewCount=" + reviewCount +
                ", pricePerNight=" + pricePerNight +
                ", latitude=" + latitude +
                ", longitude=" + longitude +
                ", rating=" + rating +
                ", host=" + host +
                "}";
    }
}
