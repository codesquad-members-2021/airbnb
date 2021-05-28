package com.codesquad.airbnb.web.dto;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Builder;
import lombok.Getter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Builder
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class RoomDetail {
    private int roomId;
    private String locationName;
    private double latitude;
    private double longtitude;
    private String name;
    private float roomRating;
    private int personCapacity;
    private int reviewCount;
    private int serviceFee;
    private int accomodationTax;
    private int cleanUpCost;
    private int pricePerDay;
    private int weeklyDiscount;
    private int totalPrice;
    private String bedroomType;
    private int bedCount;
    private String bathroomType;
    private String amenity;
    private String roomThumbnail;
    private HostProfile host;
    @Builder.Default
    private List<String> detailImages = new ArrayList<>();
}
