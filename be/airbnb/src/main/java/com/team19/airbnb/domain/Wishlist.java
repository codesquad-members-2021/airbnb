package com.team19.airbnb.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;

public class Wishlist {

    @Id
    private Long id;

    private Long room;

    @PersistenceConstructor
    Wishlist(Long id, Long room) {
        this.id = id;
        this.room = room;
    }

    Wishlist(Long room) {
        this.id = null;
        this.room = room;
    }

    public static Wishlist create(Long id, Long room) {
        return new Wishlist(id, room);
    }

    public static Wishlist create(Long room) {
        return new Wishlist(room);
    }

    public Long getRoom() {
        return room;
    }
}
