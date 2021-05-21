package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

public class Property {

    @Id
    private Long id;

    private String name;
    private int price;

    public Property() {
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getPrice() {
        return price;
    }
}
