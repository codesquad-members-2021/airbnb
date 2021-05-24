package com.airbnb.dto;

import com.airbnb.domain.User;
import com.fasterxml.jackson.annotation.JsonGetter;
import com.fasterxml.jackson.annotation.JsonSetter;

public class UserDto {
    private String login;
    private String name;

    public UserDto() {}

    public UserDto(String login, String name) {
        this.login = login;
        this.name = name;
    }

    @JsonGetter("login")
    public String getLogin() {
        return login;
    }

    @JsonSetter("login")
    public void setLogin(String login) {
        this.login = login;
    }

    @JsonGetter("name")
    public String getName() {
        return name;
    }

    @JsonSetter("name")
    public void setName(String name) {
        this.name = name;
    }

    public User toUser() {
        return new User(login, name);
    }

    public static UserDto from (User user) {
        return new UserDto(user.getLogin(), user.getName());
    }
}
