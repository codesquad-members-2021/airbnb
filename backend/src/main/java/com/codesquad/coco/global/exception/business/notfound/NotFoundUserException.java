package com.codesquad.coco.global.exception.business.notfound;

import com.codesquad.coco.global.exception.ErrorCode;

public class NotFoundUserException extends NotFoundException {

    public NotFoundUserException() {
        super(ErrorCode.USER_NOT_FOUND);
    }
}
