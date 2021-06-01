package com.example.airbnb.exception;

public class JWTCreationException extends RuntimeException {
    final static String MESSAGE = "error";

    public JWTCreationException() {
        super(MESSAGE);
    }
}
