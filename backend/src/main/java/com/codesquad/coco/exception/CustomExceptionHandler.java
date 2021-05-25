package com.codesquad.coco.exception;


import com.codesquad.coco.exception.business.BusinessException;
import com.codesquad.coco.exception.common.NotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class CustomExceptionHandler {

    @ExceptionHandler(BusinessException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ErrorReason businessException(BusinessException e) {
        return new ErrorReason(e.getMessage());
    }

    @ExceptionHandler(NotFoundException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ErrorReason notFoundException(NotFoundException e) {
        return new ErrorReason(e.getMessage());
    }

}
