package com.team19.airbnb.dto;

import com.team19.airbnb.entity.room.Host;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

public class BookingResponseDTO {

    private Long bookingId;
    private LocalDate checkIn;
    private LocalDate checkOut;
    private Long roomId;
    private String roomName;
    private String roomType;
    private List<String> images;
    private Host host;
    private Integer guest;
    private BigDecimal totalPrice;

    public BookingResponseDTO(Long bookingId,
                              LocalDate checkIn, LocalDate checkOut,
                              Long roomId, String roomName, String roomType,
                              List<String> images,
                              Host host,
                              Integer guest,
                              BigDecimal totalPrice) {
        this.bookingId = bookingId;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.roomId = roomId;
        this.roomName = roomName;
        this.roomType = roomType;
        this.images = images;
        this.host = host;
        this.guest = guest;
        this.totalPrice = totalPrice;
    }

    public Long getBookingId() {
        return bookingId;
    }

    public LocalDate getCheckIn() {
        return checkIn;
    }

    public LocalDate getCheckOut() {
        return checkOut;
    }

    public Long getRoomId() {
        return roomId;
    }

    public String getRoomName() {
        return roomName;
    }

    public String getRoomType() {
        return roomType;
    }

    public List<String> getImages() {
        return images;
    }

    public Host getHost() {
        return host;
    }

    public Integer getGuest() {
        return guest;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }
}
