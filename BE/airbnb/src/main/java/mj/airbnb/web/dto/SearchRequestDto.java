package mj.airbnb.web.dto;

import java.util.Optional;

public class SearchRequestDto {

    private final Optional<String> destination;
    private final Optional<String> checkInDate;
    private final Optional<String> checkOutDate;
    private final Optional<Integer> minPrice;
    private final Optional<Integer> maxPrice;
    private final Optional<Integer> numOfAdult;
    private final Optional<Integer> numOfChild;
    private final Optional<Integer> numOfInfant;

    public SearchRequestDto(Optional<String> destination, Optional<String> checkInDate, Optional<String> checkOutDate,
                            Optional<Integer> minPrice, Optional<Integer> maxPrice, Optional<Integer> numOfAdult,
                            Optional<Integer> numOfChild, Optional<Integer> numOfInfant) {

        this.destination = destination;
        this.checkInDate = checkInDate;
        this.checkOutDate = checkOutDate;
        this.minPrice = minPrice;
        this.maxPrice = maxPrice;
        this.numOfAdult = numOfAdult;
        this.numOfChild = numOfChild;
        this.numOfInfant = numOfInfant;
    }

    public Optional<String> getDestination() {
        return destination;
    }

    public Optional<String> getCheckInDate() {
        return checkInDate;
    }

    public Optional<String> getCheckOutDate() {
        return checkOutDate;
    }

    public Optional<Integer> getMinPrice() {
        return minPrice;
    }

    public Optional<Integer> getMaxPrice() {
        return maxPrice;
    }

    public Optional<Integer> getNumOfAdult() {
        return numOfAdult;
    }

    public Optional<Integer> getNumOfChild() {
        return numOfChild;
    }

    public Optional<Integer> getNumOfInfant() {
        return numOfInfant;
    }


}
