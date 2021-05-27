package com.codesquad.airbnb.exception;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(BookingNotAvailableException.class)
    public String handleBookingNotAvailable(BookingNotAvailableException e) {
        return e.getMessage();
    }
}
