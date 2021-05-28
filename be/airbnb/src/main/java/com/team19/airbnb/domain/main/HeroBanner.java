package com.team19.airbnb.domain.main;

import org.springframework.data.annotation.Id;

public class HeroBanner {

    @Id
    private Long id;

    private String title;
    private String image;

    HeroBanner(Long id, String title, String image) {
        this.id = id;
        this.title = title;
        this.image = image;
    }

    public static HeroBanner create(Long id, String title, String image) {
        return new HeroBanner(id, title, image);
    }

    public String getTitle() {
        return title;
    }

    public String getImage() {
        return image;
    }
}
