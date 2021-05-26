package com.team19.airbnb.domain.room;

public class Image {

    private String url;

    Image(String url) {
        this.url = url;
    }

    public Image create(String url) {
        return new Image(url);
    }

    public String getUrl() {
        return url;
    }
}
