package com.example.airbnb.dto;

public class RoomListDTO {
    private RoomDTO room;
    private String thumbImage;
    private LocationDTO location;
    private Receipt receipt;

    public RoomListDTO(RoomDTO room, String thumbImage, int days, LocationDTO locationDTO) {
        this.room = room;
        this.thumbImage = thumbImage;
        this.location = locationDTO;
        this.receipt = new Receipt(room, days);
    }

    public RoomDTO getRoom() {
        return room;
    }

    public String getThumbImage() {
        return thumbImage;
    }

    public Receipt getReceipt() {
        return receipt;
    }

    public LocationDTO getLocation() {
        return location;
    }

}

