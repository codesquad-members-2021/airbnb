package com.team19.airbnb.entity.room;

public class Image {

    private String url;
    private Long roomId;

    Image(String url, Long roomId) {
        this.url = url;
        this.roomId = roomId;
    }

    public Image create(String url, Long roomId) {
        return new Image(url, roomId);
    }
}
