package com.codesquad.coco.global.exception.auth;

import com.codesquad.coco.global.exception.ErrorCode;

public class UnknownDevice extends AuthException {

    public UnknownDevice() {
        super(ErrorCode.UNAUTHORIZED_JWT);
    }
}
