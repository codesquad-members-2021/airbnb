package com.team19.airbnb.entity;

import org.springframework.data.annotation.Id;

public class Wishlist {

    @Id
    private Long id;

    private Long user;

    Wishlist(Long id, Long user) {
        this.id = id;
        this.user = user;
    }

    public static Wishlist create(Long user) {
        return new Wishlist(null, user);
    }
}
