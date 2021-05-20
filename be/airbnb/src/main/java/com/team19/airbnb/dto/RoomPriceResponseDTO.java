package com.team19.airbnb.dto;

public class RoomPriceResponseDTO {
    private int discountPerWeek;
    private int cleaningFee;
    private int serviceFee;
    private int tax;
    private int totalPrice;

    public RoomPriceResponseDTO(int discountPerWeek, int cleaningFee, int serviceFee, int tax, int totalPrice) {
        this.discountPerWeek = discountPerWeek;
        this.cleaningFee = cleaningFee;
        this.serviceFee = serviceFee;
        this.tax = tax;
        this.totalPrice = totalPrice;
    }

    public int getDiscountPerWeek() {
        return discountPerWeek;
    }

    public int getCleaningFee() {
        return cleaningFee;
    }

    public int getServiceFee() {
        return serviceFee;
    }

    public int getTax() {
        return tax;
    }

    public int getTotalPrice() {
        return totalPrice;
    }
}
