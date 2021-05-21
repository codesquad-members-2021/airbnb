package com.codesquad.coco.rooms.model;

public class Money {

    private final int money;

    public Money(int money) {
        this.money = money;
    }

    public Money setMoney(int money) {
        return new Money(money);
    }

    public int getMoney() {
        return money;
    }

    @Override
    public String toString() {
        return "Money{" +
                "money=" + money +
                '}';
    }
}
