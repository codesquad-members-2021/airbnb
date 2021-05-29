package com.codesquad.coco.global.exception.common;

public class NotFoundUser extends NotFoundException {

    private static final String MESSAGE = "해당하는 유저 없음";

    public NotFoundUser() {
        super(MESSAGE);
    }
}
