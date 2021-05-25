package com.codesquad.airbnb.web.domain.room;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Builder;
import lombok.Getter;
import lombok.ToString;
import org.springframework.data.geo.Point;

@Getter
@Builder
@ToString
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class Room {
    private int id;
    private int locationId;
    private String name;
    private float rating;
    private int guestCapacity;
    private Point point;
    private String description;
    private BedroomType bedroomType;
    private int bedCount;
    private BathroomType bathroomType;
    private PricePolicy pricePolicy;
    private String amenity;

    public void updateId(int id) {
        this.id = id;
    }
}
