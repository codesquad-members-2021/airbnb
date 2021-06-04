package com.team19.airbnb.dto;

import com.team19.airbnb.domain.Booking.Booking;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

public class RoomPriceRequestDTO {

    private Long roomId;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate checkIn;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate checkOut;

    private Integer guest;

    public RoomPriceRequestDTO(Long roomId,
                               LocalDate checkIn, LocalDate checkOut,
                               int guest) {
        this.roomId = roomId;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.guest = guest;
    }

    public void setRoomId(Long roomId) {
        this.roomId = roomId;
    }

    public void setCheckIn(LocalDate checkIn) {
        this.checkIn = checkIn;
    }

    public void setCheckOut(LocalDate checkOut) {
        this.checkOut = checkOut;
    }

    public void setGuest(Integer guest) {
        this.guest = guest;
    }

    public Booking toEntity(Long roomId) {
        return new Booking.Builder()
                .checkIn(checkIn)
                .checkOut(checkOut)
                .guest(guest)
                .room(roomId)
                .build();
    }
}
