package mj.airbnb.web.dto;

import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.time.LocalDate;

public class SearchRequestDto {

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private final LocalDate checkInDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private final LocalDate checkOutDate;

    private final String destination;
    private final BigDecimal minPrice;
    private final BigDecimal maxPrice;
    private final Integer numOfAdult;
    private final Integer numOfChild;
    private final Integer numOfInfant;

    public SearchRequestDto(String destination, LocalDate checkInDate, LocalDate checkOutDate,
                            BigDecimal minPrice, BigDecimal maxPrice, Integer numOfAdult,
                            Integer numOfChild, Integer numOfInfant) {

        this.destination = destination;
        this.checkInDate = checkInDate;
        this.checkOutDate = checkOutDate;
        this.minPrice = minPrice;
        this.maxPrice = maxPrice;
        this.numOfAdult = numOfAdult;
        this.numOfChild = numOfChild;
        this.numOfInfant = numOfInfant;
    }

    public String getDestination() {
        return destination;
    }

    public LocalDate getCheckInDate() {
        return checkInDate;
    }

    public LocalDate getCheckOutDate() {
        return checkOutDate;
    }

    public BigDecimal getMinPrice() {
        return minPrice;
    }

    public BigDecimal getMaxPrice() {
        return maxPrice;
    }

    public Integer getNumOfAdult() {
        return numOfAdult;
    }

    public Integer getNumOfChild() {
        return numOfChild;
    }

    public Integer getNumOfInfant() {
        return numOfInfant;
    }
}
