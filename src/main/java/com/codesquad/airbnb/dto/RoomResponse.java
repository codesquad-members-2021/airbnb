package com.codesquad.airbnb.dto;

import com.codesquad.airbnb.domain.Badge;
import com.codesquad.airbnb.domain.Option;
import com.codesquad.airbnb.domain.Room;
import com.codesquad.airbnb.domain.Thumbnail;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;
import java.util.stream.Collectors;

public class RoomResponse {

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
    private List<String> thumbnails;
    private Option option;
    private List<String> badges;

    public RoomResponse(Long id, int max, String name, double rating, double latitude, double longitude, int bedroomCount,
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
        this.thumbnails = thumbnails.stream()
                .map(Thumbnail::getThumbnail)
                .collect(Collectors.toList());
        this.option = option.orElseThrow(NoSuchElementException::new);
        this.badges = badges.stream()
                .map(Badge::getType)
                .collect(Collectors.toList());
    }

    public static RoomResponse toRoomDTO(Room room) {
        return new RoomResponse(room.getId(), room.getMax(), room.getName(), room.getRating(), room.getLatitude(), room.getLongitude(),
                room.getBedroomCount(), room.getBedCount(), room.getBathroomCount(), room.getAddress(), room.getDetailAddress(),
                room.getCommentCount(), room.getOriginalPrice(), room.getSalePrice(), room.isFlexibleRefund(), room.isImmediateBooking(),
                room.getThumbnails(), room.getOption(), room.getBadges());
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

    public List<String> getThumbnails() {
        return thumbnails;
    }

    public Option getOption() {
        return option;
    }

    public List<String> getBadges() {
        return badges;
    }
}
