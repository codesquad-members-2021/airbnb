package com.team19.airbnb.domain.room;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Embedded;

import java.math.BigDecimal;
import java.util.List;

public class Room {

    @Id
    private Long id;

    private String name;
    private List<Image> images;

    @Embedded.Empty
    private Review review;

    @Embedded.Empty
    private Location location;

    private String roomType;

    @Embedded.Empty
    private RoomsAndBeds roomsAndBeds;
    private String description;

    @Embedded.Empty
    private Host host;

    private BigDecimal pricePerDay;

    private Integer capacity;

    public Room() {}

    Room(Long id,
         String name, List<Image> images,
         Review review,
         Location location,
         String roomType, RoomsAndBeds roomsAndBeds, String description,
         Host host,
         BigDecimal pricePerDay,
         Integer capacity) {
        this.id = id;
        this.name = name;
        this.images = images;
        this.review = review;
        this.location = location;
        this.roomType = roomType;
        this.roomsAndBeds = roomsAndBeds;
        this.description = description;
        this.host = host;
        this.pricePerDay = pricePerDay;
        this.capacity = capacity;
    }

    public static Room create(Long id,
                       String name, List<Image> images,
                       Review review,
                       Location location,
                       RoomType roomType, RoomsAndBeds roomsAndBeds, String description,
                       Host host,
                       BigDecimal pricePerDay,
                       Integer capacity) {
        return new Room(id,
                name, images,
                review, location,
                roomType.name(), roomsAndBeds, description,
                host,
                pricePerDay,
                capacity);
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

    public Review getReview() {
        return review;
    }

    public Location getLocation() {
        return location;
    }

    public String getRoomType() {
        return roomType;
    }

    public RoomsAndBeds getRoomsAndBeds() {
        return roomsAndBeds;
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

    public Integer getCapacity() {
        return capacity;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }

    public void setReview(Review review) {
        this.review = review;
    }

    public void setLocation(Location location) {
        this.location = location;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public void setRoomsAndBeds(RoomsAndBeds roomsAndBeds) {
        this.roomsAndBeds = roomsAndBeds;
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

    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }
}
