package com.codesquad.coco.global.exception;

public class ErrorReason {

    private String message;

    public ErrorReason(String message) {
        this.message = message;
    }

    public static ErrorReason of(ErrorCode code) {
        return new ErrorReason(code.getMessage());
    }

    public String getMessage() {
        return message;
    }
}
