package com.team19.airbnb.dto;

import com.team19.airbnb.domain.room.*;

import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;

public class RoomDetailResponseDTO {

    private Long roomId;

    private String roomName;

    private List<String> images;

    private Double score;
    private Integer reviewers;

    private String location;
    private String[] coordiante;

    private String roomType;
    private String roomConfiguration;
    private String description;

    private Host host;

    private BigDecimal pricePerDay;

    private BigDecimal totalPrice;

    private RoomDetailResponseDTO(Builder builder) {

        this.roomId = builder.roomId;

        this.roomName = builder.roomName;

        this.images = builder.images;

        this.score = builder.score;
        this.reviewers = builder.reviewers;

        this.location = builder.location;
        this.coordiante = builder.coordinate;

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

        private final Double score;
        private final Integer reviewers;

        private final String location;
        private final String[] coordinate;

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

            this.score = room.getReview().getScore();
            this.reviewers = room.getReview().getReviewers();

            this.location = room.getLocation().getAddress();
            this.coordinate = coordinate(room.getLocation());

            this.roomType = room.getRoomType();
            this.roomConfiguration = roomConfiguration(room.getRoomsAndBeds());
            this.description = room.getDescription();

            this.host = room.getHost();

            this.pricePerDay = room.getPricePerDay();
            this.totalPrice = BigDecimal.ZERO;
        }

        private String[] coordinate(Location location) {
            String[] coordinate = new String[2];
            coordinate[0] = location.getLatitude().toString();
            coordinate[1] = location.getLatitude().toString();
            return coordinate;
        }

        private String roomConfiguration(RoomsAndBeds roomsAndBeds) {
            StringBuilder stringBuilder = new StringBuilder();
            return String.valueOf(stringBuilder.append("침구 : ")
                    .append(roomsAndBeds.getBeds())
                    .append(" 침실 : ")
                    .append(roomsAndBeds.getBedRooms())
                    .append(" 욕실: ")
                    .append(roomsAndBeds.getBathRooms()));
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

    public Double getScore() {
        return score;
    }

    public Integer getReviewers() {
        return reviewers;
    }

    public String getLocation() {
        return location;
    }

    public String[] getCoordiante() {
        return coordiante;
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
}
