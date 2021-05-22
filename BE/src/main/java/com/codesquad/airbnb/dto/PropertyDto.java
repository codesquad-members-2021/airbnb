package com.codesquad.airbnb.dto;

import com.codesquad.airbnb.domain.*;

import java.util.HashSet;
import java.util.Set;

public class PropertyDto {

    private Long propertyId;
    private Set<Image> images = new HashSet<>();
    private String title;
    private boolean bookmark;
    private int pricePerNight;
    private int totalPrice;
    private int reviewCount;
    private double rating;

    public PropertyDto() {
    }

    public PropertyDto(Long propertyId, Image image, String title, boolean bookmark, int pricePerNight, int totalPrice, int reviewCount, double rating) {
        this.propertyId = propertyId;
        this.images.add(image);
        this.title = title;
        this.bookmark = bookmark;
        this.pricePerNight = pricePerNight;
        this.totalPrice = totalPrice;
        this.reviewCount = reviewCount;
        this.rating = rating;
    }

    public static PropertyDto of(Property property, PropertyDetail propertyDetail, WishList wishList, Image image, int totalPrice) {
        return new PropertyDto(property.getId(), image, property.getName(), wishList.isBookmark(), property.getPrice(), totalPrice,
                propertyDetail.getReviewCount(), propertyDetail.getRating());
    }

    public Long getPropertyId() {
        return propertyId;
    }

    public Set<Image> getImages() {
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

    public int getTotalPrice() {
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
