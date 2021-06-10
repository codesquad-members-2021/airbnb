package com.codesquad.airbnb.exception;

public class WishNotAddableException extends RuntimeException{
    private static final String WISH_NOT_ADDABLE = "이미 위시리스트에 추가된 숙소입니다.";

    public WishNotAddableException() {
        super(WISH_NOT_ADDABLE);
    }
}
