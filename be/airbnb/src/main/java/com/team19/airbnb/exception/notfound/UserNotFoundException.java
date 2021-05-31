package com.team19.airbnb.exception.notfound;

import com.team19.airbnb.exception.notfound.NotFoundException;

public class UserNotFoundException extends NotFoundException {

    public UserNotFoundException() {
        super("해당하는 user를 찾을 수 없습니다");
    }
}
