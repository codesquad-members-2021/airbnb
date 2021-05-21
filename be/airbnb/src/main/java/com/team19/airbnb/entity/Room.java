package com.team19.airbnb.entity;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Embedded;

import java.math.BigDecimal;
import java.util.List;

public class Room {

    @Id
    private Long id;

    private String Name;
    private List<Image> images;

    private Double grade;
    private Integer reviewer;

    @Embedded.Empty
    private Location location;

    private BigDecimal pricePerDay;
    private BigDecimal totalPrice;

    private String roomType;
    private String roomConfiguration;
    private String description;

    @Embedded.Empty
    private Host host;

    Room(Long id,
                String name, List<Image> images,
                Double grade, Integer reviewer,
                Location location,
                BigDecimal pricePerDay, BigDecimal totalPrice,
                String roomType, String roomConfiguration, String description,
                Host host) {
        this.id = id;
        Name = name;
        this.images = images;
        this.grade = grade;
        this.reviewer = reviewer;
        this.location = location;
        this.pricePerDay = pricePerDay;
        this.totalPrice = totalPrice;
        this.roomType = roomType;
        this.roomConfiguration = roomConfiguration;
        this.description = description;
        this.host = host;
    }

    public Room create(Long id,
                       String name, List<Image> images,
                       Double grade, Integer reviewer,
                       Location location,
                       BigDecimal pricePerDay, BigDecimal totalPrice,
                       String roomType, String roomConfiguration, String description,
                       Host host) {
        return new Room(id,
                name, images,
                grade, reviewer,
                location,
                pricePerDay, totalPrice,
                roomType, roomConfiguration, description,
                host);
    }

}
