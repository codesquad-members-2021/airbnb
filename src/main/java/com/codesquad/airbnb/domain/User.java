package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

public class User {
    @Id
    private Long id;
    private String userId;
    private String password;

    public User(Long id, String userId, String password) {
        this.id = id;
        this.userId = userId;
        this.password = password;
    }
}
