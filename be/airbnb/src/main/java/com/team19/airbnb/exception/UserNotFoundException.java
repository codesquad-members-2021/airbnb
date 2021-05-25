package com.team19.airbnb.exception;

public class UserNotFoundException extends NotFoundException {

    public UserNotFoundException() {
        super("해당하는 유저를 찾을 수 없습니다");
    }
}
