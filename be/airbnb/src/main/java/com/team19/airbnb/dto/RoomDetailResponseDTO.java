package com.team19.airbnb.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.team19.airbnb.domain.room.*;

import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;

public class RoomDetailResponseDTO {

    @JsonProperty("roomId")
    private Long roomId;

    @JsonProperty("roomName")
    private String roomName;

    private List<String> images;

    private Double grade;
    private Integer reviewer;

    private String location;
    private Double[] coordinate;

    private String roomType;
    private String roomConfiguration;
    private String description;

    private Host host;

    private BigDecimal pricePerDay;

    private BigDecimal totalPrice;

    public RoomDetailResponseDTO() {}

    private RoomDetailResponseDTO(Builder builder) {

        this.roomId = builder.roomId;

        this.roomName = builder.roomName;

        this.images = builder.images;

        this.grade = builder.grade;
        this.reviewer = builder.reviewer;

        this.location = builder.location;
        this.coordinate = builder.coordinate;

        this.roomType = builder.roomType;
        this.roomConfiguration = builder.roomConfiguration;;
        this.description = builder.description;

        this.host = builder.host;

        this.pricePerDay = builder.pricePerDay;
        this.totalPrice = builder.totalPrice;
    }

    public static class Builder {

        private final Long roomId;

        private final String roomName;
        private final List<String> images;

        private final Double grade;
        private final Integer reviewer;

        private final String location;
        private final Double[] coordinate;

        private final String roomType;
        private final String roomConfiguration;
        private final String description;

        private final Host host;

        private final BigDecimal pricePerDay;
        private BigDecimal totalPrice;

        public Builder(Room room) {
            this.roomId = room.getId();

            this.roomName = room.getName();
            this.images = room.getImages().stream()
                    .map(Image::getUrl)
                    .collect(Collectors.toList());

            this.grade = room.getReview().getGrade();
            this.reviewer = room.getReview().getReviewer();

            this.location = room.getLocation().getAddress();
            this.coordinate = coordinate(room.getLocation());

            this.roomType = room.getRoomType();
            this.roomConfiguration = roomConfiguration(room.getRoomsAndBeds());
            this.description = room.getDescription();

            this.host = room.getHost();

            this.pricePerDay = room.getPricePerDay();
            this.totalPrice = BigDecimal.ZERO;
        }

        private Double[] coordinate(Location location) {
            Double[] coordinate = new Double[2];
            coordinate[0] = location.getLatitude();
            coordinate[1] = location.getLongitude();
            return coordinate;
        }

        private String roomConfiguration(RoomsAndBeds roomsAndBeds) {
            StringBuilder stringBuilder = new StringBuilder();
            return String.valueOf(stringBuilder.append("침구 : ")
                    .append(roomsAndBeds.getBed())
                    .append(" 침실 : ")
                    .append(roomsAndBeds.getBedRoom())
                    .append(" 욕실: ")
                    .append(roomsAndBeds.getBathRoom()));
        }

        public Builder totalPrice(BigDecimal totalPrice) {
            this.totalPrice = totalPrice;
            return this;
        }

        public RoomDetailResponseDTO build() {
            return new RoomDetailResponseDTO(this);
        }
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

    public Double[] getCoordinate() {
        return coordinate;
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

    public BigDecimal getPricePerDay() {
        return pricePerDay;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public void setRoomId(Long roomId) {
        this.roomId = roomId;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public void setImages(List<String> images) {
        this.images = images;
    }

    public void setGrade(Double grade) {
        this.grade = grade;
    }

    public void setReviewer(Integer reviewer) {
        this.reviewer = reviewer;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setCoordinate(Double[] coordinate) {
        this.coordinate = coordinate;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public void setRoomConfiguration(String roomConfiguration) {
        this.roomConfiguration = roomConfiguration;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setHost(Host host) {
        this.host = host;
    }

    public void setPricePerDay(BigDecimal pricePerDay) {
        this.pricePerDay = pricePerDay;
    }

    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }
}
