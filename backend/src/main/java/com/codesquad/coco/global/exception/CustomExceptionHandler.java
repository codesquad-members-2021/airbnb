package com.codesquad.coco.global.exception;


import com.codesquad.coco.global.exception.auth.AuthException;
import com.codesquad.coco.global.exception.business.BusinessException;
import com.codesquad.coco.global.exception.common.NotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class CustomExceptionHandler {

    @ExceptionHandler(BusinessException.class)
    @ResponseStatus(HttpStatus.UNPROCESSABLE_ENTITY)
    public ErrorReason businessException(BusinessException e) {
        return new ErrorReason(e.getMessage());
    }

    @ExceptionHandler(NotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ErrorReason notFoundException(NotFoundException e) {
        return new ErrorReason(e.getMessage());
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ErrorReason notNullException(MethodArgumentNotValidException e) {
        return new ErrorReason(e.getMessage());
    }

    @ExceptionHandler(AuthException.class)
    @ResponseStatus(HttpStatus.FORBIDDEN)
    public ErrorReason notNullException(AuthException e) {
        return new ErrorReason(e.getMessage());
    }

}
