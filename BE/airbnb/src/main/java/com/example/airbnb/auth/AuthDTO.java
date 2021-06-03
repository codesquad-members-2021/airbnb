package com.example.airbnb.auth;

public class AuthDTO {
    private String jwt;
    private String avatar_url;
    private String login_id;

    public AuthDTO(String jwt, String avatar_url, String login_id) {
        this.jwt = jwt;
        this.avatar_url = avatar_url;
        this.login_id = login_id;
    }

    public String getJwt() {
        return jwt;
    }

    public void setJwt(String jwt) {
        this.jwt = jwt;
    }

    public String getAvatar_url() {
        return avatar_url;
    }

    public void setAvatar_url(String avatar_url) {
        this.avatar_url = avatar_url;
    }

    public String getLogin_id() {
        return login_id;
    }

    public void setLogin_id(String login_id) {
        this.login_id = login_id;
    }
}
