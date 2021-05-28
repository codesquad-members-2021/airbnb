package com.team19.airbnb.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class User {

    @Id
    private Long id;

    private String github;
    private List<Wishlist> wishlists;

    @PersistenceConstructor
    User(Long id, String github,
       List<Wishlist> wishlists) {
        this.id = id;
        this.github = github;
        this.wishlists = wishlists;
    }

    User(String github) {
        this.id = null;
        this.github = github;
        this.wishlists = new ArrayList<>();
    }

    public static User create(long id, String github, List<Wishlist> wishlists) {
        return new User(id, github, wishlists);
    }

    public static User create(String github) {
        return new User(github);
    }

    //TEST를 위한. getter 삭제
    public List<Wishlist> getWishlists() {
        return wishlists;
    }

    //TEST를 위한. getter 삭제
    public Long getId() {
        return id;
    }
}
