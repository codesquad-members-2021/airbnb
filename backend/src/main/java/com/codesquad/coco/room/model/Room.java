package com.codesquad.coco.room.model;

import com.codesquad.coco.host.Host;
import com.codesquad.coco.image.Image;
import com.codesquad.coco.user.Reservation;
import com.codesquad.coco.user.WishList;
import org.springframework.data.annotation.Id;

import java.util.ArrayList;
import java.util.List;


public class Room {

    private static final String DEFAULT_THUMBNAIL_IMAGE = "https://a0.muscache.com/im/pictures/user/7822f895-df8a-4b0f-9035-0d3b3afbdc3d.jpg?aki_policy=profile_x_medium";
    private static final int ONE_WEEK = 7;

    @Id
    private Long id;

    private Host host;
    private Location location;
    private AdditionalCost additionalCost;
    private Review review;
    private RoomOption roomOption;
    private String type;
    private String name;
    private Money pricePerDate;
    private String description;
    private List<Reservation> reservations = new ArrayList<>();
    private List<Image> images = new ArrayList<>();
    private WishList wishList;

    private Room(Builder builder) {
        this.id = builder.id;
        this.host = builder.host;
        this.location = builder.location;
        this.additionalCost = builder.additionalCost;
        this.review = builder.review;
        this.roomOption = builder.roomOption;
        this.name = builder.name;
        this.pricePerDate = builder.pricePerDate;
        this.description = builder.description;
        this.reservations = builder.reservations;
        this.images = builder.images;
        this.wishList = builder.wishList;
        this.type = builder.type;
    }

    public boolean getWish() {
        return wishList.isWish();
    }

    public String getThumbnailImage() {
        return images.stream()
                .filter(Image::isThumbnail)
                .findFirst()
                .map(Image::getUrl)
                .orElse(DEFAULT_THUMBNAIL_IMAGE);
    }


    public int getTotalPrice(int fewNights) {
        int basicPrice = fewNights * pricePerDate.getMoney();
        int additionalPrice = 0;
        if (fewNights >= ONE_WEEK) {
            additionalPrice -= percentCalc(basicPrice, additionalCost.getWeekSalePercent());
        }
        // 추가 비용
        additionalPrice += percentCalc(basicPrice, additionalCost.getServiceFeePercent());
        additionalPrice += percentCalc(basicPrice, additionalCost.getLodgmentFeePercent());
        additionalPrice += additionalCost.getCleaningFee();

        return basicPrice + additionalPrice;
    }

    private int percentCalc(int totalPrice, int percent) {
        return totalPrice * (percent / 100);
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

    public RoomOption getRoomOption() {
        return roomOption;
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


    public String getType() {
        return type;
    }

    @Override
    public String toString() {
        return "Rooms{" +
                "id=" + id +
                ", host=" + host +
                ", location=" + location +
                ", additionalCost=" + additionalCost +
                ", review=" + review +
                ", roomsOption=" + roomOption +
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
        private RoomOption roomOption;
        private String type;
        private String name;
        private Money pricePerDate;
        private String description;
        private List<Reservation> reservations = new ArrayList<>();
        private List<Image> images = new ArrayList<>();
        private WishList wishList;


        public Builder type(String val) {
            this.type = val;
            return this;
        }

        public Builder wishList(WishList val) {
            this.wishList = val;
            return this;
        }

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

        public Builder roomOption(RoomOption val) {
            this.roomOption = val;
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

        public Room build() {
            return new Room(this);
        }

    }
}
