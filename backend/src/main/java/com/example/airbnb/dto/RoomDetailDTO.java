package com.example.airbnb.dto;

import java.util.List;

public class RoomDetailDTO {
    private RoomDTO room;
    private String thumbImage;
    private List<String> detailImages;

    public RoomDetailDTO(RoomDTO room, String thumbImage, List<String> detailImages) {
        this.room = room;
        this.thumbImage = thumbImage;
        this.detailImages = detailImages;
    }

    public RoomDTO getRoom() {
        return room;
    }

    public String getThumbImage() {
        return thumbImage;
    }

    public List<String> getDetailImages() {
        return detailImages;
    }

}
