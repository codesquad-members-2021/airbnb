package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

public class Location {

    @Id
    private Long id;

    private String name;

    public Location(String name) {
        this.name = name;
    }
    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }
}
