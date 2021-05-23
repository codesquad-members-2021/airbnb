package mj.airbnb.web.dto;

import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Optional;

public class SearchRequestDto {

    private final Optional<String> destination;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private final Optional<LocalDate> checkInDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private final Optional<LocalDate> checkOutDate;
    private final Optional<BigDecimal> minPrice;
    private final Optional<BigDecimal> maxPrice;
    private final Optional<Integer> numOfAdult;
    private final Optional<Integer> numOfChild;
    private final Optional<Integer> numOfInfant;

    public SearchRequestDto(Optional<String> destination, Optional<LocalDate> checkInDate, Optional<LocalDate> checkOutDate,
                            Optional<BigDecimal> minPrice, Optional<BigDecimal> maxPrice, Optional<Integer> numOfAdult,
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

    public Optional<BigDecimal> getMinPrice() {
        return minPrice;
    }

    public Optional<BigDecimal> getMaxPrice() {
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
