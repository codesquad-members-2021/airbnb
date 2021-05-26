package airbnb.domain;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Cost {
    @JsonProperty(value = "max")
    private int maxCost;
    @JsonProperty(value ="min")
    private int minCost;

    public Cost(int maxPrice, int minPrice) {
        this.maxCost = maxPrice;
        this.minCost = minPrice;
    }

    public int getMaxCost() {
        return maxCost;
    }

    public int getMinCost() {
        return minCost;
    }
}
