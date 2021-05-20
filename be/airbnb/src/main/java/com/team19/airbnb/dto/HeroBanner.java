package com.team19.airbnb.dto;

public class HeroBanner {
    private String image;
    private String title;

    public HeroBanner(String image, String title) {
        this.image = image;
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public String getTitle() {
        return title;
    }
}
