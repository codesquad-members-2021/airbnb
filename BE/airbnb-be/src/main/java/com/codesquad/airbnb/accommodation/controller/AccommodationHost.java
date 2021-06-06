package com.codesquad.airbnb.accommodation.controller;

import java.util.Objects;

public class AccommodationHost {
    private Long id;
    private String name;
    private String image;

    private AccommodationHost() {
    }

    public AccommodationHost(Long id, String name, String image) {
        this.id = id;
        this.name = name;
        this.image = image;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getImage() {
        return image;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AccommodationHost that = (AccommodationHost) o;
        return Objects.equals(id, that.id) && Objects.equals(name, that.name) && Objects.equals(image, that.image);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, image);
    }

    @Override
    public String toString() {
        return "AccommodationHost{" +
                       "id=" + id +
                       ", name='" + name + '\'' +
                       ", image='" + image + '\'' +
                       '}';
    }
}
