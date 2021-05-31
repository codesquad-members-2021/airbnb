package com.codesquad.airbnb.exception;

public class BookingNotFoundException extends NotFoundException {
    private static final String BOOKING_NOT_FOUND = "예약 내역이 존재하지 않습니다";

    public BookingNotFoundException() {
        super(BOOKING_NOT_FOUND);
    }
}
