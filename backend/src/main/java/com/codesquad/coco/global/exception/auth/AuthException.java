package com.codesquad.coco.global.exception.auth;

import com.codesquad.coco.global.exception.ErrorCode;

public class AuthException extends RuntimeException {

    private ErrorCode errorCode;

    public AuthException(ErrorCode errorCode) {
        super(errorCode.getMessage());
        this.errorCode = errorCode;
    }

    public ErrorCode getErrorCode() {
        return errorCode;
    }
}
