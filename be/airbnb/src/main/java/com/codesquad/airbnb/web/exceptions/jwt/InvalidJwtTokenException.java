package com.codesquad.airbnb.web.exceptions.jwt;

public class InvalidJwtTokenException extends JwtTokenException {
    public static final String BAD_TOKEN = "Authorization의 값이 잘못되었습니다! 형식은 bearer TOKEN_STRING 이어야 합니다";

    public InvalidJwtTokenException(String message) {
        super(message);
    }
}
