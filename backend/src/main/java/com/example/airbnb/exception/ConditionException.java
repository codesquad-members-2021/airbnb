package com.example.airbnb.exception;

public class ConditionException extends RuntimeException {

    public ConditionException() {}

    public ConditionException(String message) {
        super(message);
    }

}
