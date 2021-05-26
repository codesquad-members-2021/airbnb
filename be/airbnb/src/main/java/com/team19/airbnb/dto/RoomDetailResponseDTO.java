package com.team19.airbnb.dto;

import com.team19.airbnb.domain.room.Host;
import com.team19.airbnb.domain.room.Image;
import com.team19.airbnb.domain.room.Location;
import com.team19.airbnb.domain.room.Room;

import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;

public class RoomDetailResponseDTO {

    private Long roomId;

    private String roomName;

    private List<String> images;

    private Double grade;
    private Integer reviewer;

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

        this.grade = builder.grade;
        this.reviewer = builder.reviewer;

        this.location = builder.location;
        this.coordiante = builder.coordiante;

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
        private final String[] coordiante;

        private final String roomType;
        private final String roomConfiguration;
        private final String description;

        private Host host;

        private final BigDecimal pricePerDay;
        private BigDecimal totalPrice;

        public Builder(Room room) {
            this.roomId = room.getId();

            this.roomName = room.getName();
            this.images = room.getImages().stream()
                    .map(Image::getUrl)
                    .collect(Collectors.toList());

            this.grade = room.getGrade();
            this.reviewer = room.getReviewer();

            this.location = room.getLocation().getAddress();
            this.coordiante = coordinate(room.getLocation());

            this.roomType = room.getRoomType();
            this.roomConfiguration = room.getRoomConfiguration();
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
