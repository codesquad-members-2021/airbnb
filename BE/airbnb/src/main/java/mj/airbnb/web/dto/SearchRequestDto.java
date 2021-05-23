package mj.airbnb.web.dto;

import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

public class SearchRequestDto {

    private Optional<String> destination;
    private Optional<String> checkInDate;
    private Optional<String> checkOutDate;
    private Optional<Integer> minPrice;
    private Optional<Integer> maxPrice;
    private Optional<Integer> numOfAdult;
    private Optional<Integer> numOfChild;
    private Optional<Integer> numOfInfant;

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
