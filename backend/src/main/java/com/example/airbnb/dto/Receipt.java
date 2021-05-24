package com.example.airbnb.dto;

public class Receipt {
    private static final double WEEK_SALE_PERCENT = 0.04;
    private static final double SERVICE_FEE_PERCENT = 0.14;
    private static final double RESULT_FEE_PERCENT = 0.014;
    private static final int CLEANING_FEE = 20000;

    private int basicPrice;
    private int weekSalePrice;
    private int cleaningFee;
    private int serviceFee;
    private int resultFee;
    private int totalPrice;

    public Receipt(RoomDTO room, int days) {
        this.basicPrice = room.getPricePerDay() * days;
        this.weekSalePrice = calculateWeekSalePrice(WEEK_SALE_PERCENT, days);
        this.cleaningFee = CLEANING_FEE;
        this.serviceFee = calculateFee(SERVICE_FEE_PERCENT);
        this.resultFee = calculateFee(RESULT_FEE_PERCENT);
        this.totalPrice = calculateTotalPrice();
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

    private int calculateFee(double percent) {
        return (int) (basicPrice * percent);
    }

    private int calculateWeekSalePrice(double percent, int days) {
        if (days > 6) {
            return (int) (basicPrice * percent);
        }
        return 0;
    }

    private int calculateTotalPrice() {
        return basicPrice - weekSalePrice + cleaningFee + serviceFee + resultFee;
    }

}
