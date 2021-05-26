package com.codesquad.airbnb.web.dto;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class RoomPreview {
    private int roomId;
    private String locationName;
    private double latitude;
    private double longtitude;
    private String name;
    private float roomRating;
    private int personCapacity;
    private int reviewCount;
    private int pricePerDay;
    private int totalPrice;
    private String bedroomType;
    private int bedCount;
    private String bathroomType;
    private String amenity;
    private String roomThumbnail;
    private HostProfile host;
}
