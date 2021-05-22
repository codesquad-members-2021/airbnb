package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

public class Property {

    @Id
    private Long id;

    private String name;
    private int price;

    public Property() {
    }

    public Property(Long id, String name, int price) {
        this.id = id;
        this.name = name;
        this.price = price;
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

    @Override
    public String toString() {
        return "Property{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                '}';
    }
}
