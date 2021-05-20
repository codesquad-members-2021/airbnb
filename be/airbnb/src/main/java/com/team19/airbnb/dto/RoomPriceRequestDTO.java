package com.team19.airbnb.dto;

public class RoomPriceRequestDTO {
    private int roomId;
    private String checkIn;
    private String checkOut;
    private int guest;

    public RoomPriceRequestDTO(int roomId, String checkIn, String checkOut, int guest) {
        this.roomId = roomId;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.guest = guest;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public void setCheckIn(String checkIn) {
        this.checkIn = checkIn;
    }

    public void setCheckOut(String checkOut) {
        this.checkOut = checkOut;
    }

    public void setGuest(int guest) {
        this.guest = guest;
    }
}
