package com.codesquad.coco.global.exception.auth;

import com.codesquad.coco.global.exception.ErrorCode;

public class NotLoggedInException extends AuthException {

    public NotLoggedInException() {
        super(ErrorCode.NOT_LOGGED_ID);
    }
}
