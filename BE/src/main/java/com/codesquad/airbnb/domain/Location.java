package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

public class Location {

    @Id
    private Long id;

    private String name;

    private String imageUrl;

    public Location(Long id, String name, String imageUrl) {
        this.id = id;
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

    @Override
    public String toString() {
        return "Location{" +
                "name='" + name + '\'' +
                '}';
    }
}
