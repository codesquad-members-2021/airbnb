package com.codesquad.coco.global.exception.business.notfound;

import com.codesquad.coco.global.exception.ErrorCode;

public class NotFoundRoomException extends NotFoundException {

    public NotFoundRoomException() {
        super(ErrorCode.USER_NOT_FOUND);
    }
}
