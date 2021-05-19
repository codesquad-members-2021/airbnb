package com.example.airbnb.domain;

public class Accommodation {

    private Long id;
    private String title;

    public Accommodation() {
        this.id = id;
        this.title = title;
    }

    public Accommodation(Long id, String title) {
        this.id = id;
        this.title = title;
    }

    public Long getId() {
        return id;
    }

    public Accommodation setId(Long id) {
        this.id = id;
        return this;
    }

    public String getTitle() {
        return title;
    }

    public Accommodation setTitle(String title) {
        this.title = title;
        return this;
    }
}
