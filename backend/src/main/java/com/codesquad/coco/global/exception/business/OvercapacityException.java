package com.codesquad.coco.global.exception.business;

public class OvercapacityException extends BusinessException {

    private static final String MESSAGE = "수용 인원 초과";

    public OvercapacityException() {
        super(MESSAGE);
    }

}
