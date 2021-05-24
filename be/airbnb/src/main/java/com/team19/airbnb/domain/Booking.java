package com.team19.airbnb.domain;

import org.springframework.data.annotation.Id;

import java.math.BigDecimal;
import java.time.LocalDate;

public class Booking {

    @Id
    private Long id;

    private LocalDate checkIn;
    private LocalDate checkOut;

    private Integer guest;
    private BigDecimal totalPrice;

    private Long room;

    public Booking(Long id,
                   LocalDate checkIn, LocalDate checkOut,
                   Integer guest, BigDecimal totalPrice,
                   Long room) {
        this.id = id;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.guest = guest;
        this.totalPrice = totalPrice;
        this.room = room;
    }

    public static Booking create(LocalDate checkIn, LocalDate checkOut,
                                 Integer guest, BigDecimal totalPrice,
                                 Long room) {
        return new Booking(null,
                checkIn, checkOut,
                guest, totalPrice,
                room);
    }
}
