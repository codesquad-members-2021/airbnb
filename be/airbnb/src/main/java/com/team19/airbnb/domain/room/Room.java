package com.team19.airbnb.domain.room;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;
import org.springframework.data.relational.core.mapping.Embedded;

import java.math.BigDecimal;
import java.util.List;

public class Room {

    @Id
    private Long id;

    private String name;
    private List<Image> images;

    private Double grade;
    private Integer reviewer;

    @Embedded.Empty
    private Location location;

    private BigDecimal pricePerDay;

    private String roomType;
    private String roomConfiguration;
    private String description;

    @Embedded.Empty
    private Host host;

    @PersistenceConstructor
    Room(Long id,
                String name, List<Image> images,
                Double grade, Integer reviewer,
                Location location,
                BigDecimal pricePerDay,
                String roomType, String roomConfiguration, String description,
                Host host) {
        this.id = id;
        this.name = name;
        this.images = images;
        this.grade = grade;
        this.reviewer = reviewer;
        this.location = location;
        this.pricePerDay = pricePerDay;
        this.roomType = roomType;
        this.roomConfiguration = roomConfiguration;
        this.description = description;
        this.host = host;
    }

    Room(String name, List<Image> images,
         Double grade, Integer reviewer,
         Location location,
         BigDecimal pricePerDay,
         String roomType, String roomConfiguration, String description,
         Host host) {
        this.id = null;
        this.name = name;
        this.images = images;
        this.grade = grade;
        this.reviewer = reviewer;
        this.location = location;
        this.pricePerDay = pricePerDay;
        this.roomType = roomType;
        this.roomConfiguration = roomConfiguration;
        this.description = description;
        this.host = host;
    }

    public static Room create(String name, List<Image> images,
                       Double grade, Integer reviewer,
                       Location location,
                       BigDecimal pricePerDay,
                       String roomType, String roomConfiguration, String description,
                       Host host) {
        return new Room(name, images,
                grade, reviewer,
                location,
                pricePerDay,
                roomType, roomConfiguration, description,
                host);
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public List<Image> getImages() {
        return images;
    }

    public Double getGrade() {
        return grade;
    }

    public Integer getReviewer() {
        return reviewer;
    }

    public Location getLocation() {
        return location;
    }

    public BigDecimal getPricePerDay() {
        return pricePerDay;
    }

    public String getRoomType() {
        return roomType;
    }

    public String getRoomConfiguration() {
        return roomConfiguration;
    }

    public String getDescription() {
        return description;
    }

    public Host getHost() {
        return host;
    }
}
