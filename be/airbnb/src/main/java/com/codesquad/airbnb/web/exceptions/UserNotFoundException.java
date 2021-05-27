package com.codesquad.airbnb.web.exceptions;

public class UserNotFoundException extends NotFoundException {
    public static final String GUEST_NOT_FOUND = "게스트를 찾을 수 없습니다 id : ";

    public UserNotFoundException(String message, int guestId) {
        super(message + guestId);
    }
}
