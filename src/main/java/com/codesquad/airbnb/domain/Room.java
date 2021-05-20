package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

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

    public Room(Long id, int max, String name, double rating, double latitude, double longitude, int bedroomCount,
                int bedCount, int bathroomCount, String address, String detailAddress, int commentCount,
                int originalPrice, int salePrice, boolean flexibleRefund, boolean immediateBooking) {
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
    }
}
