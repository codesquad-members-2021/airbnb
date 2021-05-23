package com.codesquad.coco.room.model;

public class Money {

    private final int money;

    public Money(int money) {
        this.money = money;
    }

    public static Money priceMin(Integer money) {
        money = money != null ? money : 0;
        return new Money(money);
    }

    public static Money priceMax(Integer money) {
        money = money != null ? money : 999_999_999;
        return new Money(money);
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
