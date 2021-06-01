package com.codesquad.coco.global.exception.business;

import com.codesquad.coco.global.exception.ErrorCode;

public class TotalPriceNonMatchException extends BusinessException {

    public TotalPriceNonMatchException(int totalPrice) {
        super(ErrorCode.TOTAL_PRICE_NON_MATCH.plusMessage(String.valueOf(totalPrice)));
    }

}
