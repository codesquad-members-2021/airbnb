package com.team19.airbnb.exception;

public class BookingNotFoundException extends NotFoundException {

    public BookingNotFoundException() {
        super("해당하는 예약을 찾을 수 없습니다.");
    }
}
