package com.example.airbnb.exception;

public class UnExpectedTimeFormat extends RuntimeException {
    private static final String UNEXPECTEDTIMEFORMAT = "this Time-string-Format does not support this applications";

    public UnExpectedTimeFormat() {
        super(UNEXPECTEDTIMEFORMAT);
    }
}
