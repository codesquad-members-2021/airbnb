package com.team19.airbnb.domain;

import org.springframework.data.annotation.Id;

import java.util.ArrayList;
import java.util.List;

public class User {

    @Id
    private Long id;

    private String github;
    private List<Wishlist> wishlists;

    User(Long id, String github,
       List<Wishlist> wishlists) {
        this.id = id;
        this.github = github;
        this.wishlists = wishlists;
    }

    public static User create(String github) {
        return new User(null, github,
                        new ArrayList<>());
    }
}
