package com.codesquad.coco.rooms.model.dto;

import java.util.List;

public class PricesDTO {

    private List<Integer> prices;

    public PricesDTO(List<Integer> prices) {
        this.prices = prices;
    }

    public List<Integer> getPrices() {
        return prices;
    }
}
