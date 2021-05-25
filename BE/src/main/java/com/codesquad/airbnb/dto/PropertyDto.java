package com.codesquad.airbnb.dto;

import com.codesquad.airbnb.domain.*;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class PropertyDto {

    private Long propertyId;
    private String images;
    private String title;
    private boolean bookmark;
    private int pricePerNight;
    private long totalPrice;
    private int reviewCount;
    private double rating;

    public PropertyDto() {
    }

    public PropertyDto(Long propertyId, String title, boolean bookmark, int pricePerNight, int reviewCount, double rating) {
        this.propertyId = propertyId;
        this.title = title;
        this.bookmark = bookmark;
        this.pricePerNight = pricePerNight;
        this.reviewCount = reviewCount;
        this.rating = rating;
    }

    public static PropertyDto of(Long propertyId, String propertyTitle, boolean bookmark, int price, int reviewCount, double rating) {
        return new PropertyDto(propertyId, propertyTitle, bookmark, price,
                reviewCount, rating);
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

    @Override
    public String toString() {
        return "PropertyDto{" +
                "propertyId=" + propertyId +
                ", images=" + images +
                ", title='" + title + '\'' +
                ", bookmark=" + bookmark +
                ", pricePerNight=" + pricePerNight +
                ", totalPrice=" + totalPrice +
                ", reviewCount=" + reviewCount +
                ", rating=" + rating +
                '}';
    }
}
