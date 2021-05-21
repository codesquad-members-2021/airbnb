package com.team19.airbnb.entity;

import org.springframework.data.annotation.Id;

public class Wishlist {

    @Id
    private Long id;

    private Long userId;
    private Long roomId;

    Wishlist(Long id, Long userId, Long roomId) {
        this.id = id;
        this.userId = userId;
        this.roomId = roomId;
    }

    public Wishlist create(Long id, Long userId, Long roomId) {
        return new Wishlist(id, userId, roomId);
    }
}
