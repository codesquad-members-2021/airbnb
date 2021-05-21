package com.team19.airbnb.dto;

import java.math.BigDecimal;

public class RoomPriceResponseDTO {
    private BigDecimal discountPerWeek;
    private BigDecimal cleaningFee;
    private BigDecimal serviceFee;
    private BigDecimal tax;
    private BigDecimal totalPrice;

    public RoomPriceResponseDTO(BigDecimal discountPerWeek,
                                BigDecimal cleaningFee,
                                BigDecimal serviceFee,
                                BigDecimal tax,
                                BigDecimal totalPrice) {
        this.discountPerWeek = discountPerWeek;
        this.cleaningFee = cleaningFee;
        this.serviceFee = serviceFee;
        this.tax = tax;
        this.totalPrice = totalPrice;
    }

    public BigDecimal getDiscountPerWeek() {
        return discountPerWeek;
    }

    public BigDecimal getCleaningFee() {
        return cleaningFee;
    }

    public BigDecimal getServiceFee() {
        return serviceFee;
    }

    public BigDecimal getTax() {
        return tax;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }
}
