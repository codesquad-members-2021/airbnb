package com.codesquad.airbnb.dto;

import java.util.Arrays;

public class PriceSearchDTO {

    private int averagePrice;
    private int[] numberOfRooms;

    public int getAveragePrice() {
        return averagePrice;
    }

    public int[] getNumberOfRooms() {
        return numberOfRooms;
    }

    public void setAveragePrice(int averagePrice) {
        this.averagePrice = averagePrice;
    }

    public void setNumberOfRooms(int[] numberOfRooms) {
        this.numberOfRooms = numberOfRooms;
    }

    @Override
    public String toString() {
        return "PriceSearchDTO{" +
                "averagePrice=" + averagePrice +
                ", numberOfRooms=" + Arrays.toString(numberOfRooms) +
                '}';
    }
}
