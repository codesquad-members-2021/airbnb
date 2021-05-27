package com.codesquad.airbnb.dto;

import java.util.ArrayList;
import java.util.List;

public class PropertyDetailResponseDTO {

    private List<String> imageUrls = new ArrayList<>();
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
    private HostDTO host;

    public PropertyDetailResponseDTO(List<String> imageUrls, String title, String description, String locationName,
                                     String propertyType, int maxOccupancy, int cleaningFee, int bedCount,
                                     int bathCount, int reviewCount, int pricePerNight, double latitude,
                                     double longitude, double rating, HostDTO host) {
        this.imageUrls = imageUrls;
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

    public static PropertyDetailResponseDTO of(List<String> imageUrls, String title, String description,
                                               String locationName, String propertyType, int maxOccupancy,
                                               int cleaningFee, int bedCount, int bathCount, int reviewCount,
                                               int pricePerNight, double latitude, double longitude, double rating,
                                               HostDTO host) {
        return new PropertyDetailResponseDTO (imageUrls, title, description, locationName, propertyType, maxOccupancy,
                cleaningFee, bedCount, bathCount, reviewCount, pricePerNight, latitude, longitude, rating, host);
    }

    public List<String> getImageUrls() {
        return imageUrls;
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

    public HostDTO getHost() {
        return host;
    }

    @Override
    public String toString() {
        return "PropertyDetailResponseDTO{" +
                "imageUrls=" + imageUrls +
                " Property{" +
                " title='" + title + '\'' +
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
                '}' +
                '}';
    }
}
