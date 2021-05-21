package com.codesquad.coco.rooms.model;

import org.springframework.data.annotation.Id;

public class AdditionalCost {

    @Id
    private Long id;

    private int weekSalePercent;
    private int cleaningFee;
    private int serviceFeePercent;
    private int lodgmentFeePercent;

    public AdditionalCost(int weekSalePercent, int cleaningFee, int serviceFeePercent, int lodgmentFeePercent) {
        this.weekSalePercent = weekSalePercent;
        this.cleaningFee = cleaningFee;
        this.serviceFeePercent = serviceFeePercent;
        this.lodgmentFeePercent = lodgmentFeePercent;
    }

    public Long getId() {
        return id;
    }

    public int getWeekSalePercent() {
        return weekSalePercent;
    }

    public int getCleaningFee() {
        return cleaningFee;
    }

    public int getServiceFeePercent() {
        return serviceFeePercent;
    }

    public int getLodgmentFeePercent() {
        return lodgmentFeePercent;
    }

    @Override
    public String toString() {
        return "AdditionalCost{" +
                "id=" + id +
                ", weekSalePercent=" + weekSalePercent +
                ", cleaningFee=" + cleaningFee +
                ", serviceFeePercent=" + serviceFeePercent +
                ", lodgmentFeePercent=" + lodgmentFeePercent +
                '}';
    }
}
