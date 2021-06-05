package com.codesquad.coco.global.exception.business;

import com.codesquad.coco.global.exception.ErrorCode;

public class OvercapacityException extends BusinessException {

    public OvercapacityException() {
        super(ErrorCode.OVER_CAPACITY);
    }

}
