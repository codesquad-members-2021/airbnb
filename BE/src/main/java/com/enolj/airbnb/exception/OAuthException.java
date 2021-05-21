package com.enolj.airbnb.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.BAD_REQUEST)
public class OAuthException extends RuntimeException {

    private ErrorMessage errorMessage;

    public OAuthException(String errorMessage) {
        super(errorMessage);
    }

    public OAuthException(ErrorMessage errorMessage) {
        super(errorMessage.getErrorMessage());
        this.errorMessage = errorMessage;
    }
}
