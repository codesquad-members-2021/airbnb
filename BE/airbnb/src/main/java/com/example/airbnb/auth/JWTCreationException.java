package com.example.airbnb.auth;

public class JWTCreationException extends RuntimeException{
    final static String MESSAGE = "error";

    public JWTCreationException() {
        super(MESSAGE);
    }
}
