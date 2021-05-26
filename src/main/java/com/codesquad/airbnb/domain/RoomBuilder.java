package com.codesquad.airbnb.domain;

import java.util.List;
import java.util.Optional;

public class RoomBuilder {

    private Long id;
    private int max;
    private String name;
    private double rating;
    private double latitude;
    private double longitude;
    private int bedroomCount;
    private int bedCount;
    private int bathroomCount;
    private String address;
    private String detailAddress;
    private int commentCount;
    private int originalPrice;
    private int salePrice;
    private boolean flexibleRefund;
    private boolean immediateBooking;

    private List<Thumbnail> thumbnails;
    private Optional<Option> option;
    private List<Badge> badges;

    public RoomBuilder setId(Long id) {
        this.id = id;
        return this;
    }

    public RoomBuilder setMax(int max) {
        this.max = max;
        return this;
    }

    public RoomBuilder setName(String name) {
        this.name = name;
        return this;
    }

    public RoomBuilder setRating(double rating) {
        this.rating = rating;
        return this;
    }

    public RoomBuilder setLatitude(double latitude) {
        this.latitude = latitude;
        return this;
    }

    public RoomBuilder setLongitude(double longitude) {
        this.longitude = longitude;
        return this;
    }

    public RoomBuilder setBedroomCount(int bedroomCount) {
        this.bedroomCount = bedroomCount;
        return this;
    }

    public RoomBuilder setBedCount(int bedCount) {
        this.bedCount = bedCount;
        return this;
    }

    public RoomBuilder setBathroomCount(int bathroomCount) {
        this.bathroomCount = bathroomCount;
        return this;
    }

    public RoomBuilder setAddress(String address) {
        this.address = address;
        return this;
    }

    public RoomBuilder setDetailAddress(String detailAddress) {
        this.detailAddress = detailAddress;
        return this;
    }

    public RoomBuilder setCommentCount(int commentCount) {
        this.commentCount = commentCount;
        return this;
    }

    public RoomBuilder setOriginalPrice(int originalPrice) {
        this.originalPrice = originalPrice;
        return this;
    }

    public RoomBuilder setSalePrice(int salePrice) {
        this.salePrice = salePrice;
        return this;
    }

    public RoomBuilder setFlexibleRefund(boolean flexibleRefund) {
        this.flexibleRefund = flexibleRefund;
        return this;
    }

    public RoomBuilder setImmediateBooking(boolean immediateBooking) {
        this.immediateBooking = immediateBooking;
        return this;
    }

    public RoomBuilder setThumbnails(List<Thumbnail> thumbnails) {
        this.thumbnails = thumbnails;
        return this;
    }

    public RoomBuilder setOptions(Optional<Option> option) {
        this.option = option;
        return this;
    }

    public RoomBuilder setBadges(List<Badge> badges) {
        this.badges = badges;
        return this;
    }

    public Room build() {
        return new Room(id, max, name, rating, latitude, longitude, bedroomCount, bedCount, bathroomCount, address,
                detailAddress, commentCount, originalPrice, salePrice, flexibleRefund, immediateBooking,
                thumbnails, option, badges);
    }
}
