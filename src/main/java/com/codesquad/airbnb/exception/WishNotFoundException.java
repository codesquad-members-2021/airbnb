package com.codesquad.airbnb.exception;

public class WishNotFoundException extends RuntimeException {
    private static final String WISH_NOT_FOUND = "위시리스트에 존재하지 않아 삭제할 수 없습니다.";

    public WishNotFoundException() {
        super(WISH_NOT_FOUND);
    }
}
