package com.codesquad.airbnb.web.exceptions.notfound;

public class RoomNotFoundException extends NotFoundException {
    public static final String FIND_ROOM_BY_ID_FAILED = "숙소를 찾을 수 없습니다 id : ";

    public RoomNotFoundException(int id) {
        super(FIND_ROOM_BY_ID_FAILED + id);
    }
}
