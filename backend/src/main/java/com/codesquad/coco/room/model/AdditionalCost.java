package com.codesquad.coco.room.model;

import com.codesquad.coco.utils.CalcUtil;
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

    public int calcWeekSale(int basicPrice) {
        return CalcUtil.percentCalc(basicPrice, this.weekSalePercent);
    }

    public int calcServiceFee(int basicPrice) {
        return CalcUtil.percentCalc(basicPrice, this.serviceFeePercent);
    }

    public int calcLodgmentFee(int basicPrice) {
        return CalcUtil.percentCalc(basicPrice, this.lodgmentFeePercent);
    }

    public int calcCleaningFee(){
        return this.cleaningFee;
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
