package com.codesquad.coco.city;

import org.springframework.data.annotation.Id;

public class City {

    @Id
    private Long id;

    private String name;
    private String imageUrl;

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
