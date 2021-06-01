package com.example.airbnb.exception;

public class UnExpectedTimeFormat extends RuntimeException {
    private static final String UNEXPECTED_TIME_FORMAT = "this Time-string-Format does not support this applications";

    public UnExpectedTimeFormat() {
        super(UNEXPECTED_TIME_FORMAT);
    }
}
