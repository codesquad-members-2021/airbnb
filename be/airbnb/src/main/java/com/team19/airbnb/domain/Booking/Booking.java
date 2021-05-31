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
            Integer guest, BigDecimal totalPrice,
            Long user, Long room) {
        this.id = id;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.guest = guest;
        this.totalPrice = totalPrice;
        this.user = user;
        this.room = room;
    }

    Booking(LocalDate checkIn, LocalDate checkOut,
            Integer guest, BigDecimal totalPrice,
            Long user, Long room) {
        this.id = null;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.guest = guest;
        this.totalPrice = totalPrice;
        this.user = user;
        this.room = room;
    }

    //create 이름 바꿔줘야 할듯, 여긴 Build를 쓰는 것이 나을 듯
    public static Booking create(Long id,
                                 LocalDate checkIn, LocalDate checkOut,
                                 Integer guest, BigDecimal totalPrice,
                                 Long user, Long room) {
        return new Booking(id,
                checkIn, checkOut,
                guest, totalPrice,
                user, room);
    }

    public static Booking create(LocalDate checkIn, LocalDate checkOut,
                                 Integer guest, BigDecimal totalPrice,
                                 Long user, Long room) {
        return new Booking(checkIn, checkOut,
                guest, totalPrice,
                user, room);
    }

    public static Booking create(LocalDate checkIn, LocalDate checkOut,
                                 Integer guest, BigDecimal totalPrice,
                                 Long room) {
        return new Booking(null,
                checkIn, checkOut,
                guest, totalPrice,
                null, room);
    }

    public static Booking create(LocalDate checkIn, LocalDate checkOut,
                                 Integer guest,
                                 Long room) {
        return new Booking(null,
                checkIn, checkOut,
                guest, null,
                null, room);
    }

    public static Booking create(LocalDate checkIn, LocalDate checkOut,
                                 Integer guest) {
        return new Booking(null,
                checkIn, checkOut,
                guest, null,
                null, null);
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

    public void checkUserId(Long userId) {
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
