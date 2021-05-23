package mj.airbnb.web.dto;

import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;
import java.util.Optional;

public class SearchRequestDto {

    private final Optional<String> destination;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private final Optional<LocalDate> checkInDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private final Optional<LocalDate> checkOutDate;
    private final Optional<Integer> minPrice;
    private final Optional<Integer> maxPrice;
    private final Optional<Integer> numOfAdult;
    private final Optional<Integer> numOfChild;
    private final Optional<Integer> numOfInfant;

    public SearchRequestDto(Optional<String> destination, Optional<LocalDate> checkInDate, Optional<LocalDate> checkOutDate,
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

    public Optional<LocalDate> getCheckInDate() {
        return checkInDate;
    }

    public Optional<LocalDate> getCheckOutDate() {
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
