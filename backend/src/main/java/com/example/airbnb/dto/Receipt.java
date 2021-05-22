package com.example.airbnb.dto;

public class Receipt {
    private int basicPrice;
    private int weekSalePrice;
    private int cleaningFee;
    private int serviceFee;
    private int resultFee;
    private int totalPrice;

    public Receipt(RoomDTO room, int days) {
        this.basicPrice = room.getPricePerDay() * days;
        Double weekSale = basicPrice * 0.04;
        Double serviceFee = basicPrice *0.14;
        Double resultFee = basicPrice * 0.014;
        this.weekSalePrice = 0;
        if (days > 6) {
            this.weekSalePrice = -weekSale.intValue();
        }
        this.cleaningFee = 20000;
        this.serviceFee = serviceFee.intValue();
        this.resultFee = resultFee.intValue();
        this.totalPrice = basicPrice - weekSale.intValue() + cleaningFee + serviceFee.intValue() +resultFee.intValue();
    }

    public int getBasicPrice() {
        return basicPrice;
    }

    public int getWeekSalePrice() {
        return weekSalePrice;
    }

    public int getCleaningFee() {
        return cleaningFee;
    }

    public int getServiceFee() {
        return serviceFee;
    }

    public int getResultFee() {
        return resultFee;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

}
