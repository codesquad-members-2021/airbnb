package com.codesquad.coco.global.exception.business.notfound;

import com.codesquad.coco.global.exception.ErrorCode;
import com.codesquad.coco.global.exception.business.BusinessException;

public class NotFoundException extends BusinessException {

    public NotFoundException() {
        super(ErrorCode.USER_NOT_FOUND);
    }

    public NotFoundException(ErrorCode errorCode) {
        super(errorCode);
    }
}
