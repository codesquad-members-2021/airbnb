package com.team19.airbnb.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;

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

    public Long getId() {
        return id;
    }

    public String getGithub() {
        return github;
    }

    public List<Wishlist> getWishlists() {
        return wishlists;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public static User create(String github) {
        return new User(github);
    }

    public static User create(Long id, String github, List<Wishlist> wishlists) {
        return new User(id, github, wishlists);
    }
}
