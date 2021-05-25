package com.team19.airbnb.exception;

import com.team19.airbnb.ResponseBody;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class AirbnbExceptionHandler {
    private static final Logger logger = LoggerFactory.getLogger(AirbnbExceptionHandler.class);

    @ExceptionHandler(NotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ResponseBody<String> handleNotFoundException(NotFoundException e) {
        logger.error(e.getMessage());
        return ResponseBody.notFound(e.getMessage());
    }
}
