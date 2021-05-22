package com.airbnb.exception;

public class DataSourceException extends RuntimeException {
    public DataSourceException(String message) {
        super(message);
    }
}
