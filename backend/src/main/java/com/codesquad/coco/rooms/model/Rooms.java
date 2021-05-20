package com.codesquad.coco.rooms.model;

import com.codesquad.coco.Host.Host;
import org.springframework.data.annotation.Id;

import java.math.BigDecimal;

public class Rooms {

    @Id
    private Long id;

    private Host host;
    private Location location;
    private AdditionalCost additionalCost;
    private Review review;
    private RoomsOption roomsOption;
    private String name;
    private BigDecimal pricePerDate;
    private String description;


    public Long getId() {
        return id;
    }

    public Host getHost() {
        return host;
    }

    public Location getLocation() {
        return location;
    }

    public AdditionalCost getAdditionalCost() {
        return additionalCost;
    }

    public Review getReview() {
        return review;
    }

    public RoomsOption getRoomsOption() {
        return roomsOption;
    }

    public String getName() {
        return name;
    }

    public BigDecimal getPricePerDate() {
        return pricePerDate;
    }

    public String getDescription() {
        return description;
    }
}
