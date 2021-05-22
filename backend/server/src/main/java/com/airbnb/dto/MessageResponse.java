package com.airbnb.dto;

import com.fasterxml.jackson.annotation.JsonGetter;

public class MessageResponse {
    private final String message;

    public MessageResponse(String message) {
        this.message = message;
    }

    @JsonGetter("message")
    public String getMessage() {
        return message;
    }
}
