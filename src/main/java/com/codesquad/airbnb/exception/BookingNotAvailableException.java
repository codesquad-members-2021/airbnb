package com.codesquad.airbnb.exception;

public class BookingNotAvailableException extends RuntimeException {
    private static final String BOOKING_NOT_AVAILABLE = "이미 예약된 숙소입니다.";

    public BookingNotAvailableException() {
        super(BOOKING_NOT_AVAILABLE);
    }
}
