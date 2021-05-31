package com.codesquad.airbnb.exception;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(BookingNotAvailableException.class)
    public String handleBookingNotAvailable(BookingNotAvailableException e) {
        return e.getMessage();
    }

    @ExceptionHandler(WishNotAddableException.class)
    public String handleWishNotAddable(WishNotAddableException e) {
        return e.getMessage();
    }

    @ExceptionHandler(WishNotFoundException.class)
    public String handleWishNotFound(WishNotFoundException e) {
        return e.getMessage();
    }
}
