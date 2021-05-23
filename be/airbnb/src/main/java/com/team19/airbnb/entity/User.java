package com.team19.airbnb.entity;

import org.springframework.data.annotation.Id;

import java.util.List;

public class User {

    @Id
    private Long id;

    private String github;

    private List<Booking> bookings;
    private List<Wishlist> wishlists;

    User(Long id, String github,
         List<Booking> bookings, List<Wishlist> wishlists) {
        this.id = id;
        this.github = github;
        this.bookings = bookings;
        this.wishlists = wishlists;
    }

    public static User create(String github,
                              List<Booking> bookings, List<Wishlist> wishlists) {
        return new User(null, github,
                        bookings, wishlists);
    }
}
