package com.codesquad.coco.room.model;

import com.codesquad.coco.utils.CalcUtil;
import org.springframework.data.annotation.Id;

public class AdditionalCost {

    private static final int ONE_WEEK = 7;


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

    public int calcWeekSale(int basicPrice, int fewNights) {
        if (fewNights >= ONE_WEEK) {
            return CalcUtil.percentCalc(basicPrice, this.weekSalePercent);
        }
        return 0;
    }

    public int calcAdditionalCost(int basicPrice) {
        int additionalPrice = 0;
        additionalPrice += CalcUtil.percentCalc(basicPrice, this.serviceFeePercent);
        additionalPrice += CalcUtil.percentCalc(basicPrice, this.lodgmentFeePercent);
        additionalPrice += this.cleaningFee;
        return additionalPrice;
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
