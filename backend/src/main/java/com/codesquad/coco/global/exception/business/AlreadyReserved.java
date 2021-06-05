package com.codesquad.coco.global.exception.business;

import com.codesquad.coco.global.exception.ErrorCode;

public class AlreadyReserved extends BusinessException {

    public AlreadyReserved() {
        super(ErrorCode.RESERVED_FOR_THAT_DATE);
    }

}
