package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

public class Property {

    @Id
    private Long id;

    private String title;
    private int price;

    public Property() {
    }

    public Property(Long id, String title, int price) {
        this.id = id;
        this.title = title;
        this.price = price;
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public int getPrice() {
        return price;
    }

    @Override
    public String toString() {
        return "Property{" +
                "id=" + id +
                ", name='" + title + '\'' +
                ", price=" + price +
                '}';
    }
}
