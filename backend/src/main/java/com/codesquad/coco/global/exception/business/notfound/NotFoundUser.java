package com.codesquad.coco.global.exception.business.notfound;

import com.codesquad.coco.global.exception.ErrorCode;

public class NotFoundUser extends NotFoundException {

    public NotFoundUser() {
        super(ErrorCode.USER_NOT_FOUND);
    }
}
