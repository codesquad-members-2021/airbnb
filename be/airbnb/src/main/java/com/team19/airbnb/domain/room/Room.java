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

    //최대인원 필요

    private Double grade;
    private Integer reviewer;

    @Embedded.Empty
    private Location location;

    //enum으로 바꿨으면 집전체, 개인실, 호텔객실, 다인실
    private String roomType;
    //이것도 욕실 몇 개 이런 것 (침대수, 침실 수, 욕실 수) RoomsAndBeds
    private String roomConfiguration;
    private String description;

    @Embedded.Empty
    private Host host;

    private BigDecimal pricePerDay;

    @PersistenceConstructor
    Room(Long id,
         String name, List<Image> images,
         Double grade, Integer reviewer,
         Location location,
         String roomType, String roomConfiguration, String description,
         Host host,
         BigDecimal pricePerDay) {
        this.id = id;
        this.name = name;
        this.images = images;
        this.grade = grade;
        this.reviewer = reviewer;
        this.location = location;
        this.roomType = roomType;
        this.roomConfiguration = roomConfiguration;
        this.description = description;
        this.host = host;
        this.pricePerDay = pricePerDay;
    }

    public static Room create(Long id,
                              String name, List<Image> images,
                              Double grade, Integer reviewer,
                              Location location,
                              String roomType, String roomConfiguration, String description,
                              Host host,
                              BigDecimal pricePerDay) {
        return new Room(id,
                name, images,
                grade, reviewer,
                location,
                roomType, roomConfiguration, description,
                host,
                pricePerDay);
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
