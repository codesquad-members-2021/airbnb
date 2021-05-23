package com.team19.airbnb.dto;

import com.team19.airbnb.entity.room.Host;

import java.math.BigDecimal;
import java.util.List;

public class RoomDetailResponseDTO {
    // /rooms~ , /wishlist, /search
    private Long roomId;
    private String roomName;
    private List<String> images;
    private Double grade;
    private Integer reviewer;
    private String location;
    private BigDecimal pricePerDay;
    private BigDecimal totalPrice;
    private String roomType;
    private String roomConfiguration;
    private String description;
    private Host host;

    private String[] coordiante;

    public RoomDetailResponseDTO(Long roomId, String roomName,
                                 List<String> images,
                                 Double grade, Integer reviewer,
                                 String location,
                                 BigDecimal pricePerDay, BigDecimal totalPrice,
                                 String roomType,
                                 String roomConfiguration, String description,
                                 Host host) {
        this.roomId = roomId;
        this.roomName = roomName;
        this.images = images;
        this.grade = grade;
        this.reviewer = reviewer;
        this.location = location;
        this.pricePerDay = pricePerDay;
        this.totalPrice = totalPrice;
        this.roomType = roomType;
        this.host = host;
        this.roomConfiguration = roomConfiguration;
        this.description = description;
    }

    public Long getRoomId() {
        return roomId;
    }

    public String getRoomName() {
        return roomName;
    }

    public List<String> getImages() {
        return images;
    }

    public Double getGrade() {
        return grade;
    }

    public Integer getReviewer() {
        return reviewer;
    }

    public String getLocation() {
        return location;
    }

    public BigDecimal getPricePerDay() {
        return pricePerDay;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public String getRoomType() {
        return roomType;
    }

    public Host getHost() {
        return host;
    }

    public String getRoomConfiguration() {
        return roomConfiguration;
    }

    public String getDescription() {
        return description;
    }
}
