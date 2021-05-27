package com.codesquad.airbnb.dto;

public class PriceInfoDTO {

    private static final double SERVICE_FEE_RATE = .03;
    private static final double TAX_RATE = .07;

    private int priceForDays;
    private int cleaningFee;

    private int serviceFee;
    private int tax;

    private int totalPrice;

    public int getPriceForDays() {
        return priceForDays;
    }

    public void setPriceForDays(int pricePerNight, int days) {
        this.priceForDays = pricePerNight * days;
    }

    public int getCleaningFee() {
        return cleaningFee;
    }

    public void setCleaningFee(int cleaningFee) {
        this.cleaningFee = cleaningFee;
    }

    public int getServiceFee() {
        return serviceFee;
    }

    public void setServiceFee() {
        this.serviceFee = (int) (priceForDays * SERVICE_FEE_RATE);
    }

    public int getTax() {
        return tax;
    }

    public void setTax() {
        this.tax = (int) ((priceForDays + cleaningFee + serviceFee) * TAX_RATE);
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice() {
         this.totalPrice = priceForDays + cleaningFee + serviceFee + tax;
    }
}
