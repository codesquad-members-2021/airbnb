package com.example.airbnb.domain;

import org.springframework.data.annotation.Id;

public class ExtraCost {
    @Id
    private Long id;
    private Double weekSalePercent;
    private int cleaningFee;
    private Double serviceFeePercent;
    private Double resortFeePercent;

    public ExtraCost(Long id, Double weekSalePercent, int cleaningFee, Double serviceFeePercent, Double resortFeePercent) {
        this.id = id;
        this.weekSalePercent = weekSalePercent;
        this.cleaningFee = cleaningFee;
        this.serviceFeePercent = serviceFeePercent;
        this.resortFeePercent = resortFeePercent;
    }

    public Long getId() {
        return id;
    }

    public Double getWeekSalePercent() {
        return weekSalePercent;
    }

    public int getCleaningFee() {
        return cleaningFee;
    }

    public Double getServiceFeePercent() {
        return serviceFeePercent;
    }

    public Double getResortFeePercent() {
        return resortFeePercent;
    }

}
