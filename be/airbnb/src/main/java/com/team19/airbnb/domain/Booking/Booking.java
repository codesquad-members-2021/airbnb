package com.team19.airbnb.domain.Booking;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

public class Booking {

    @Id
    private Long id;

    private LocalDate checkIn;
    private LocalDate checkOut;
    private Integer guest;
    private BigDecimal totalPrice;
    private Long user;
    private Long room;

    @PersistenceConstructor
    Booking(Long id,
            LocalDate checkIn, LocalDate checkOut,
            Integer guest,
            BigDecimal totalPrice,
            Long user,
            Long room) {
        this.id = id;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.guest = guest;
        this.totalPrice = totalPrice;
        this.user = user;
        this.room = room;
    }

    Booking(Builder builder) {
        this.id = builder.id;
        this.checkIn = builder.checkIn;
        this.checkOut = builder.checkOut;
        this.guest = builder.guest;
        this.totalPrice = builder.totalPrice;
        this.user = builder.user;
        this.room = builder.room;
    }

    public static class Builder {

        private Long id;

        private LocalDate checkIn;
        private LocalDate checkOut;
        private Integer guest;
        private BigDecimal totalPrice;
        private Long user;
        private Long room;

        public Builder() {
        }

        public Builder id(Long id) {
            this.id = id;
            return this;
        }

        public Builder checkIn(LocalDate checkIn) {
            this.checkIn = checkIn;
            return this;
        }

        public Builder checkOut(LocalDate checkOut) {
            this.checkOut = checkOut;
            return this;
        }

        public Builder guest(Integer guest) {
            this.guest = guest;
            return this;
        }

        public Builder totalPrice(BigDecimal totalPrice) {
            this.totalPrice = totalPrice;
            return this;
        }

        public Builder user(Long user) {
            this.user = user;
            return this;
        }

        public Builder room(Long room) {
            this.room = room;
            return this;
        }

        public Booking build() {
            return new Booking(this);
        }
    }

    public Long getId() {
        return id;
    }

    public LocalDate getCheckIn() {
        return checkIn;
    }

    public LocalDate getCheckOut() {
        return checkOut;
    }

    public Integer getGuest() {
        return guest;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public Long getUser() {
        return user;
    }

    public Long getRoom() {
        return room;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setUser(Long userId) {
        this.user = userId;
    }

    public boolean isUser(Long userId) {
        return this.user.equals(userId);
    }

    public BigDecimal calculateTotalPrice(BigDecimal roomPricePerDay) {
        this.totalPrice = new Price.Builder(countDays(), roomPricePerDay).build().getTotalPrice();
        return totalPrice;
    }

    public Long countDays() {
        return ChronoUnit.DAYS.between(checkIn, checkOut);
    }
}
