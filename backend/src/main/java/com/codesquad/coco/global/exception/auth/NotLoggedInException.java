package com.codesquad.coco.global.exception.auth;

public class NotLoggedInException extends AuthException {

    private static final String MESSAGE = "로그인 상태가 아닙니다";

    public NotLoggedInException() {
        super(MESSAGE);
    }
}
