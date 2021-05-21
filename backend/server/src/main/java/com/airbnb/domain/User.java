package com.airbnb.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Embedded;

public class User {
    @Id
    private Long id;
    private final String login;
    private final String name;

    @Embedded(onEmpty = Embedded.OnEmpty.USE_EMPTY)
    private final Token token;

    public User(String login, String name, Token token) {
        this.login = login;
        this.name = name;
        this.token = token;
    }

    public String getLogin() {
        return login;
    }

    public String getName() {
        return name;
    }
}
