package com.codesquad.airbnb.common.exception;

import org.springframework.http.HttpStatus;
import org.springframework.validation.FieldError;

import java.util.List;
import java.util.stream.Collectors;

public class ErrorResponse {
    private int statusCode;
    private String status;
    private String message;
    private List<String> errors;

    private ErrorResponse() {
    }

    public ErrorResponse(int statusCode, String status, String message, List<String> errors) {
        this.statusCode = statusCode;
        this.status = status;
        this.message = message;
        this.errors = errors;
    }

    public static ErrorResponse of(HttpStatus status, String message, List<FieldError> errors) {
        return new ErrorResponse(
                status.value(),
                status.name(),
                status.getReasonPhrase(),
                errors.stream()
                        .map(fieldError -> fieldError.getField() + " " + fieldError.getDefaultMessage())
                        .collect(Collectors.toList())
        );
    }

    public int getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(int statusCode) {
        this.statusCode = statusCode;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public List<String> getErrors() {
        return errors;
    }

    public void setErrors(List<String> errors) {
        this.errors = errors;
    }

    @Override
    public String toString() {
        return "ErrorResponse{" +
                "statusCode=" + statusCode +
                ", status='" + status + '\'' +
                ", message='" + message + '\'' +
                ", errors=" + errors +
                '}';
    }
}
