package com.codesquad.airbnb.web.controller;

import com.codesquad.airbnb.web.constants.GlobalErrorMessageConstants;
import com.codesquad.airbnb.web.dto.ErrorResponse;
import com.codesquad.airbnb.web.exceptions.InvalidSqlResultException;
import com.codesquad.airbnb.web.exceptions.InvalidUserInputException;
import com.codesquad.airbnb.web.exceptions.ReservationFailedException;
import com.codesquad.airbnb.web.exceptions.jwt.JwtTokenException;
import com.codesquad.airbnb.web.exceptions.notfound.NotFoundException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {

    @ResponseStatus(HttpStatus.NOT_FOUND)
    @ExceptionHandler(NotFoundException.class)
    public ErrorResponse handleNotFoundException(NotFoundException exception) {
        return new ErrorResponse(exception.getMessage());
    }

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(InvalidUserInputException.class)
    public ErrorResponse handleInvalidUserInputException(InvalidUserInputException exception) {
        return new ErrorResponse(exception.getMessage());
    }

    @ResponseStatus(HttpStatus.CONFLICT)
    @ExceptionHandler(ReservationFailedException.class)
    public ErrorResponse handleReservationFailedException(ReservationFailedException exception) {
        return new ErrorResponse(exception.getMessage());
    }

    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(InvalidSqlResultException.class)
    public ErrorResponse handleInvalidSqlResultException(InvalidSqlResultException exception) {
        log.error(exception.getMessage());
        return new ErrorResponse(GlobalErrorMessageConstants.ERROR_OCCURED_FROM_SERVER);
    }

    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(Exception.class)
    public ErrorResponse handleUnknownError(Exception exception) {
        log.error(exception.getMessage());
        return new ErrorResponse(GlobalErrorMessageConstants.ERROR_OCCURED_FROM_SERVER);
    }

    @ResponseStatus(HttpStatus.METHOD_NOT_ALLOWED)
    @ExceptionHandler(HttpRequestMethodNotSupportedException.class)
    public ErrorResponse handleMethodNotAllowed(HttpRequestMethodNotSupportedException exception) {
        return new ErrorResponse(exception.getMessage());
    }

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(JwtTokenException.class)
    public ErrorResponse handleNoJwtTokenException(JwtTokenException exception) {
        return new ErrorResponse(exception.getMessage());
    }
}
