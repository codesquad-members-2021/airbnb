package com.codesquad.airbnb.web.exceptions;

public class InvalidUserInputException extends RuntimeException{
    public static final String NO_STAY_DAYS = "체크아웃이 체크인 날짜보다 이전이거나 같습니다. 숙박일은 0이하일 수 없습니다.";
    public static final String PRICE_RANGE_ERROR = "최소금액은 최대금액보다 작거나 같아야 합니다";

    public InvalidUserInputException(String message) {
        super(message);
    }
}
