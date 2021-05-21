package com.team19.airbnb.dto;

import java.time.LocalDate;

public class RoomPriceRequestDTO {
    private Long roomId;
    private LocalDate checkIn;
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
}
