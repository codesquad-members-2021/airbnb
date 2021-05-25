package com.team19.airbnb.exception;

public class RoomNotFoundException extends NotFoundException{

    public RoomNotFoundException() {
        super("해당하는 room을 찾을 수 없습니다");
    }
}
