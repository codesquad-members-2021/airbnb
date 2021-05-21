package com.example.airbnb.dto;

import java.util.List;

public class PriceDTO {
    private int averagePrice;
    private List<Integer> allPrices;

    public PriceDTO(int averagePrice, List<Integer> allPrices) {
        this.averagePrice = averagePrice;
        this.allPrices = allPrices;
    }

    public int getAveragePrice() {
        return averagePrice;
    }

    public List<Integer> getAllPrices() {
        return allPrices;
    }

}
