package com.example.airbnb.domain;

import org.springframework.data.annotation.Id;

public class Image {
    @Id
    private Long id;

    private String type;
    private String url;

    private Long room;

    public Image(Long id, String type, String url, Long room) {
        this.id = id;
        this.type = type;
        this.url = url;
        this.room = room;
    }

    public Image(String type, String url) {
        this.type = type;
        this.url = url;
    }

    public Image(String url) {
        this.url = url;
    }

    public Long getId() {
        return id;
    }

    public String getType() {
        return type;
    }

    public String getUrl() {
        return url;
    }

    public Long getRoom() {
        return room;
    }
}
