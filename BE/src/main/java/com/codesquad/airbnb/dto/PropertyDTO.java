package com.codesquad.airbnb.dto;

public class PropertyDTO {

    private Long propertyId;
    private String images;
    private String title;
    private boolean bookmark;
    private int pricePerNight;
    private long totalPrice;
    private int reviewCount;
    private double rating;
    private double latitude;
    private double longitude;

    public PropertyDTO() {
    }

    public PropertyDTO(Long propertyId, String title, boolean bookmark, int pricePerNight, int reviewCount, double rating, double latitude, double longitude) {
        this.propertyId = propertyId;
        this.title = title;
        this.bookmark = bookmark;
        this.pricePerNight = pricePerNight;
        this.reviewCount = reviewCount;
        this.rating = rating;
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public static PropertyDTO of(Long propertyId, String propertyTitle, boolean bookmark, int price, int reviewCount, double rating, double latitude, double longitude) {
        return new PropertyDTO(propertyId, propertyTitle, bookmark, price,
                reviewCount, rating, latitude, longitude);
    }

    public void setImages(String images) {
        this.images = images;
    }

    public void setTotalPrice(long totalDate) {
        totalPrice = totalDate * pricePerNight;
    }

    public Long getPropertyId() {
        return propertyId;
    }

    public String getImages() {
        return images;
    }

    public String getTitle() {
        return title;
    }

    public boolean isBookmark() {
        return bookmark;
    }

    public int getPricePerNight() {
        return pricePerNight;
    }

    public long getTotalPrice() {
        return totalPrice;
    }

    public int getReviewCount() {
        return reviewCount;
    }

    public double getRating() {
        return rating;
    }

    public double getLatitude() {
        return latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    @Override
    public String toString() {
        return "PropertyDTO{" +
                "propertyId=" + propertyId +
                ", images='" + images + '\'' +
                ", title='" + title + '\'' +
                ", bookmark=" + bookmark +
                ", pricePerNight=" + pricePerNight +
                ", totalPrice=" + totalPrice +
                ", reviewCount=" + reviewCount +
                ", rating=" + rating +
                ", latitude=" + latitude +
                ", longitude=" + longitude +
                '}';
    }
}
