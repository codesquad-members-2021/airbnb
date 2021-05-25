package com.codesquad.coco.exception.common;

public class NotFoundRoomException extends NotFoundException{

    private static final String MESSAGE = "찾는 방이 없습니다.";

    public NotFoundRoomException() {
        super(MESSAGE);
    }
}
