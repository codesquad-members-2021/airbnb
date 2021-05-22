package com.example.airbnb.dto;

import java.util.List;

public class RoomDetailDTO {
    private RoomDTO room;
    private LocationDTO location;
    private String thumbImage;
    private List<String> detailImages;

    public RoomDetailDTO(RoomDTO room, LocationDTO location, String thumbImage, List<String> detailImages) {
        this.room = room;
        this.location = location;
        this.thumbImage = thumbImage;
        this.detailImages = detailImages;
    }

    public RoomDTO getRoom() {
        return room;
    }

    public LocationDTO getLocation() {
        return location;
    }

    public String getThumbImage() {
        return thumbImage;
    }

    public List<String> getDetailImages() {
        return detailImages;
    }

}
