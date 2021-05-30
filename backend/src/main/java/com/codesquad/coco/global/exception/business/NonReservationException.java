package com.codesquad.coco.global.exception.business;

import com.codesquad.coco.global.exception.ErrorCode;

public class NonReservationException extends BusinessException {

    public NonReservationException() {
        super(ErrorCode.OVER_CAPACITY);
    }

}
