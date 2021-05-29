package com.codesquad.coco.global.exception.business;

public class TotalPriceNonMatchException extends BusinessException {

    private static final String MESSAGE = "클라이언트의 총액과 일치하지 않음 : ";

    public TotalPriceNonMatchException(int totalPrice) {
        super(MESSAGE + totalPrice);
    }

}
