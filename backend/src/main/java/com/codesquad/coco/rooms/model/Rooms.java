package com.codesquad.coco.rooms.model;

import com.codesquad.coco.Host.Host;
import com.codesquad.coco.image.Image;
import com.codesquad.coco.reservation.Reservation;
import org.springframework.data.annotation.Id;

import java.util.ArrayList;
import java.util.List;


public class Rooms {

    @Id
    private Long id;

    private Host host;
    private Location location;
    private AdditionalCost additionalCost;
    private Review review;
    private RoomsOption roomsOption;
    private String name;
    private Money pricePerDate;
    private String description;
    private List<Reservation> reservations = new ArrayList<>();
    private List<Image> images = new ArrayList<>();

    private Rooms(Builder builder) {
        this.id = builder.id;
        this.host = builder.host;
        this.location = builder.location;
        this.additionalCost = builder.additionalCost;
        this.review = builder.review;
        this.roomsOption = builder.roomsOption;
        this.name = builder.name;
        this.pricePerDate = builder.pricePerDate;
        this.description = builder.description;
        this.reservations = builder.reservations;
        this.images = builder.images;
    }

    public void addReservation(Reservation reservation) {
        reservations.add(reservation);
    }

    public void addImages(Image image) {
        images.add(image);
    }

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

    public int getPricePerDate() {
        return pricePerDate.getMoney();
    }

    public String getDescription() {
        return description;
    }

    public List<Reservation> getReservations() {
        return reservations;
    }

    public List<Image> getImages() {
        return images;
    }

    @Override
    public String toString() {
        return "Rooms{" +
                "id=" + id +
                ", host=" + host +
                ", location=" + location +
                ", additionalCost=" + additionalCost +
                ", review=" + review +
                ", roomsOption=" + roomsOption +
                ", name='" + name + '\'' +
                ", pricePerDate=" + pricePerDate +
                ", description='" + description + '\'' +
                ", reservations=" + reservations +
                ", images=" + images +
                '}';
    }

    public static class Builder {
        private Long id;
        private Host host;
        private Location location;
        private AdditionalCost additionalCost;
        private Review review;
        private RoomsOption roomsOption;
        private String name;
        private Money pricePerDate;
        private String description;
        private List<Reservation> reservations = new ArrayList<>();
        private List<Image> images = new ArrayList<>();

        public Builder id(Long val) {
            this.id = val;
            return this;
        }

        public Builder host(Host val) {
            this.host = val;
            return this;
        }

        public Builder location(Location val) {
            this.location = val;
            return this;
        }

        public Builder additionalCost(AdditionalCost val) {
            this.additionalCost = val;
            return this;
        }

        public Builder review(Review val) {
            this.review = val;
            return this;
        }

        public Builder roomsOption(RoomsOption val) {
            this.roomsOption = val;
            return this;
        }

        public Builder name(String val) {
            this.name = val;
            return this;
        }

        public Builder pricePerDate(Money val) {
            this.pricePerDate = val;
            return this;
        }

        public Builder description(String val) {
            this.description = val;
            return this;
        }

        public Builder reservations(List<Reservation> val) {
            this.reservations = val;
            return this;
        }

        public Builder images(List<Image> val) {
            this.images = val;
            return this;
        }

        public Rooms build() {
            return new Rooms(this);
        }

    }
}
