package com.team19.airbnb.entity;

import org.springframework.data.annotation.Id;

public class User {

    @Id
    private Long id;

    private String github;

    User(Long id, String github) {
        this.id = id;
        this.github = github;
    }

    public User create(Long id, String github) {
        return new User(id, github);
    }
}
