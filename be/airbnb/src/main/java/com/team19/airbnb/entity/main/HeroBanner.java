package com.team19.airbnb.entity;

public class HeroBanner {

    private String title;
    private String image;

    public HeroBanner(String title, String image) {
        this.title = title;
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public String getImage() {
        return image;
    }
}
