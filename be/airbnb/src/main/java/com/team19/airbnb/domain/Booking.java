package com.team19.airbnb.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;

import java.math.BigDecimal;
import java.time.LocalDate;

public class Booking {

    @Id
    private Long id;

    private LocalDate checkIn;
    private LocalDate checkOut;

    private Integer guest;
    private BigDecimal totalPrice;

    private Long user;
    private Long room;

    Booking() {
    }

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
        return new Booking(null,
                checkIn, checkOut,
                guest, totalPrice,
                user, room);
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
}
