package com.team19.airbnb.exception.notfound;

public class ConditionNotFoundException extends NotFoundException {

    public ConditionNotFoundException() {
        super("조건이 없습니다. 조건은 최소한 1개 이상 입력해주세요.");
    }
}
