package com.codesquad.coco.global.exception.business;

public class NonReservationException extends BusinessException {

    private static final String MESSAGE = "그 날에는 예약이 이미 있음";

    public NonReservationException() {
        super(MESSAGE);
    }

}
