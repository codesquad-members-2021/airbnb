package com.example.airbnb.exception;

public class JWTCreationException extends RuntimeException {
    final static String JWT_CREATION_FAIL = "JWT Creation Failed";

    public JWTCreationException() {
        super(JWT_CREATION_FAIL);
    }
}
