package com.example.airbnb.auth;

import com.fasterxml.jackson.annotation.JsonSetter;

public class User {
    private String login_id;
    //private String name;
    private String avatar_url;




    public String getLogin_id() {
        return login_id;
    }

    @JsonSetter("login")
    public void setLogin_id(String login_id) {
        this.login_id = login_id;
    }

    public String getAvatar_url() {
        return avatar_url;
    }

    @JsonSetter("avatar_url")
    public void setAvatar_url(String avatar_url) {
        this.avatar_url = avatar_url;
    }
}
