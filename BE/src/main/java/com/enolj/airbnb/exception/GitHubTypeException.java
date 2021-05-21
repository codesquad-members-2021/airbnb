package com.enolj.airbnb.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.BAD_REQUEST)
public class GitHubTypeException extends RuntimeException {

    public GitHubTypeException(String errorMessage) {
        super(errorMessage);
    }

    public GitHubTypeException(ErrorMessage errorMessage) {
        super(errorMessage.getErrorMessage());
    }
}
