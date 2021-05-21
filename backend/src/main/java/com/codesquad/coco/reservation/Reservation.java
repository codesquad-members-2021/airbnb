package com.codesquad.coco.reservation;

import com.codesquad.coco.rooms.model.Rooms;
import com.codesquad.coco.user.User;
import org.springframework.data.annotation.Id;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

public class Reservation {

    @Id
    private Long id;

    private User user;
    private Rooms rooms;
    private int adult;
    private int child;
    private int baby;
    private LocalDate checkIn;
    private LocalDate checkOut;
    private BigDecimal totalPrice;

    public Long getId() {
        return id;
    }

    public User getUser() {
        return user;
    }

    public Rooms getRooms() {
        return rooms;
    }

    public int getAdult() {
        return adult;
    }

    public int getChild() {
        return child;
    }

    public int getBaby() {
        return baby;
    }

    public LocalDate getCheckIn() {
        return checkIn;
    }

    public LocalDate getCheckOut() {
        return checkOut;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }
}
