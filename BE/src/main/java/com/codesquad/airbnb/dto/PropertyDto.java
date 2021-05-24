package com.codesquad.airbnb.dto;

import com.codesquad.airbnb.domain.*;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class PropertyDto {

    private Long propertyId;
    private List<String> images = new ArrayList<>();
    private String title;
    private boolean bookmark;
    private int pricePerNight;
    private int totalPrice;
    private int reviewCount;
    private double rating;

    public PropertyDto() {
    }

    public PropertyDto(Long propertyId, String title, boolean bookmark, int pricePerNight, int totalPrice, int reviewCount, double rating) {
        this.propertyId = propertyId;
        this.title = title;
        this.bookmark = bookmark;
        this.pricePerNight = pricePerNight;
        this.totalPrice = totalPrice;
        this.reviewCount = reviewCount;
        this.rating = rating;
    }

    public static PropertyDto of(Property property, PropertyDetail propertyDetail, WishList wishList, int totalPrice) {
        return new PropertyDto(property.getId(), property.getName(), wishList.isBookmark(), property.getPrice(), totalPrice,
                propertyDetail.getReviewCount(), propertyDetail.getRating());
    }

    public void addImage(List<Image> images) {
        images.stream().forEach(image -> this.images.add(image.getImageUrl()));
    }

    public Long getPropertyId() {
        return propertyId;
    }

    public List<String> getImages() {
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
