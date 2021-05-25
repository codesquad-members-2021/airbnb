package com.codesquad.coco.room.model;

public class Money {

    private static final int MIN_PRICE = 0;
    private static final int MAX_PRICE = 999_999_999;

    private final int money;

    public Money(int money) {
        this.money = money;
    }

    public static Money minPrice(Integer money) {
        money = money != null ? money : MIN_PRICE;
        return new Money(money);
    }

    public static Money maxPrice(Integer money) {
        money = money != null ? money : MAX_PRICE;
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
