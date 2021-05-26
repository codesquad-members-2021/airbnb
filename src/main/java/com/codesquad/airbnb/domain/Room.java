package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

import java.util.List;
import java.util.Optional;

public class Room {

    @Id
    private final Long id;

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

    public Room(Long id, int max, String name, double rating, double latitude, double longitude, int bedroomCount,
                int bedCount, int bathroomCount, String address, String detailAddress, int commentCount,
                int originalPrice, int salePrice, boolean flexibleRefund, boolean immediateBooking,
                List<Thumbnail> thumbnails, Optional<Option> option, List<Badge> badges) {
        this.id = id;
        this.max = max;
        this.name = name;
        this.rating = rating;
        this.latitude = latitude;
        this.longitude = longitude;
        this.bedroomCount = bedroomCount;
        this.bedCount = bedCount;
        this.bathroomCount = bathroomCount;
        this.address = address;
        this.detailAddress = detailAddress;
        this.commentCount = commentCount;
        this.originalPrice = originalPrice;
        this.salePrice = salePrice;
        this.flexibleRefund = flexibleRefund;
        this.immediateBooking = immediateBooking;
        this.thumbnails = thumbnails;
        this.option = option;
        this.badges = badges;
    }

    public Long getId() {
        return id;
    }

    public int getMax() {
        return max;
    }

    public String getName() {
        return name;
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

    public int getBedroomCount() {
        return bedroomCount;
    }

    public int getBedCount() {
        return bedCount;
    }

    public int getBathroomCount() {
        return bathroomCount;
    }

    public String getAddress() {
        return address;
    }

    public String getDetailAddress() {
        return detailAddress;
    }

    public int getCommentCount() {
        return commentCount;
    }

    public int getOriginalPrice() {
        return originalPrice;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public boolean isFlexibleRefund() {
        return flexibleRefund;
    }

    public boolean isImmediateBooking() {
        return immediateBooking;
    }

    public List<Thumbnail> getThumbnails() {
        return thumbnails;
    }

    public void setThumbnails(List<Thumbnail> thumbnails) {
        this.thumbnails = thumbnails;
    }

    public Optional<Option> getOption() {
        return option;
    }

    public void setOption(Optional<Option> option) {
        this.option = option;
    }

    public List<Badge> getBadges() {
        return badges;
    }

    public void setBadges(List<Badge> badges) {
        this.badges = badges;
    }

    @Override
    public String toString() {
        return "Room{" +
                "id=" + id +
                ", max=" + max +
                ", name='" + name + '\'' +
                ", rating=" + rating +
                ", latitude=" + latitude +
                ", longitude=" + longitude +
                ", bedroomCount=" + bedroomCount +
                ", bedCount=" + bedCount +
                ", bathroomCount=" + bathroomCount +
                ", address='" + address + '\'' +
                ", detailAddress='" + detailAddress + '\'' +
                ", commentCount=" + commentCount +
                ", originalPrice=" + originalPrice +
                ", salePrice=" + salePrice +
                ", flexibleRefund=" + flexibleRefund +
                ", immediateBooking=" + immediateBooking +
                ", thumbnails=" + thumbnails +
                ", options=" + option +
                ", badges=" + badges +
                '}';
    }
}
