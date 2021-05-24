package com.team19.airbnb.entity;

import org.springframework.data.annotation.Id;

public class Wishlist {

    @Id
    private Long id;

    private Long room;

    Wishlist(Long id, Long room) {
        this.id = id;
        this.room = room;
    }

    public static Wishlist create(Long room) {
        return new Wishlist(null, room);
    }
}
