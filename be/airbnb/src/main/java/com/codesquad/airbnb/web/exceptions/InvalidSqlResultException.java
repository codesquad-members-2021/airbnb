package com.codesquad.airbnb.web.exceptions;

public class InvalidSqlResultException extends RuntimeException{
    public static final String RESERVATION_DUPLICATE_CHECK_ERROR = "예약이 겹치는지 검사하는 과정에서 문제가 발생했습니다.";

    public InvalidSqlResultException(String message) {
        super(message);
    }
}
