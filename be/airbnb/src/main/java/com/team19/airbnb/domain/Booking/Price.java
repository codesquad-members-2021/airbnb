package com.team19.airbnb.domain.Booking;

import java.math.BigDecimal;
import java.math.RoundingMode;

public class Price {

    private static final BigDecimal CLEANING_FEE_PERCENTAGE_FOR_ROOM = BigDecimal.valueOf(0.30);
    private static final BigDecimal SERVICE_FEE_PERCENTAGE_FOR_ROOM = BigDecimal.valueOf(0.10);
    private static final BigDecimal TAX_PERCENTAGE_FOR_TOTAL_PRICE = BigDecimal.valueOf(0.10);
    private static final BigDecimal DISCOUNT_PERCENTAGE_FOR_WEEK = BigDecimal.valueOf(0.04);
    private static final double DAYS_OF_A_WEEK = 0.7;

    private Long days;
    private BigDecimal pricePerDay;
    private BigDecimal basePrice;

    private BigDecimal discountPerWeek;
    private BigDecimal cleaningFee;
    private BigDecimal serviceFee;
    private BigDecimal tax;
    private BigDecimal totalPrice;

    public Price(Builder builder) {
        this.days = builder.days;
        this.pricePerDay = builder.pricePerDay;
        this.basePrice = builder.basePrice;
        this.discountPerWeek = builder.discountPerWeek;
        this.cleaningFee = builder.cleaningFee;
        this.serviceFee = builder.serviceFee;
        this.tax = builder.tax;
        this.totalPrice = builder.totalPrice;
    }

    public static class Builder {

        private Long days;
        private BigDecimal pricePerDay;
        private BigDecimal basePrice;

        private BigDecimal discountPerWeek;
        private BigDecimal cleaningFee;
        private BigDecimal serviceFee;
        private BigDecimal tax;
        private BigDecimal totalPrice;

        public Builder(Long days, BigDecimal pricePerDay) {
            this.days = days;
            this.pricePerDay = pricePerDay;
            this.basePrice = basePrice();

            this.discountPerWeek = discountPerWeek();
            this.cleaningFee = cleaningFee();
            this.serviceFee = serviceFee();
            this.tax = calculateTax();
            this.totalPrice = totalPrice();
        }

        private BigDecimal basePrice() {
            return pricePerDay.multiply(new BigDecimal(days));
        }

        private BigDecimal discountPerWeek() {
            if (days < 7) {
                return BigDecimal.ZERO;
            }

            long discountDays = days - (days % 7);
            return pricePerDay.multiply(new BigDecimal(discountDays))
                    .multiply(DISCOUNT_PERCENTAGE_FOR_WEEK)
                    .setScale(0, RoundingMode.FLOOR);
        }

        private BigDecimal cleaningFee() {
            return pricePerDay.multiply(CLEANING_FEE_PERCENTAGE_FOR_ROOM)
                    .setScale(0, RoundingMode.FLOOR);
        }

        private BigDecimal serviceFee() {
            return pricePerDay.multiply(SERVICE_FEE_PERCENTAGE_FOR_ROOM)
                    .setScale(0, RoundingMode.FLOOR);
        }

        private BigDecimal calculateTax() {
            return basePrice.subtract(discountPerWeek)
                    .add(cleaningFee)
                    .add(serviceFee)
                    .multiply(TAX_PERCENTAGE_FOR_TOTAL_PRICE)
                    .setScale(0, RoundingMode.FLOOR);
        }

        public BigDecimal totalPrice() {
            return basePrice.subtract(discountPerWeek)
                    .add(cleaningFee)
                    .add(serviceFee)
                    .add(tax);
        }

        public Price build() {
            return new Price(this);
        }
    }

    public BigDecimal getPricePerDay() {
        return pricePerDay;
    }

    public BigDecimal getBasePrice() {
        return basePrice;
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








