package com.example.airbnb.auth;

public class Jwt {
    private final String jwt;

    public Jwt(String jwt) {
        this.jwt = jwt;
    }

    public String getJwt() {
        return jwt;
    }
}
