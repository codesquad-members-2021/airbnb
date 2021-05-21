package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

public class Category {

    @Id
    private Long id;

    private String name;

    private String imageUrl;

    public Category(String name, String imageUrl) {
        this.name = name;
        this.imageUrl = imageUrl;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getImageUrl() {
        return imageUrl;
    }
}
