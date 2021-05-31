package com.codesquad.airbnb.accommodation.controller;

import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.FutureOrPresent;
import javax.validation.constraints.Positive;
import javax.validation.constraints.PositiveOrZero;
import java.time.LocalDate;
import java.util.Objects;

public class AccommodationRequest {
    private static final int DEFAULT_NUMBER_OF_NIGHTS = 1;
    private static final int DEFAULT_NUMBER_OF_ADULTS = 1;
    private static final int DEFAULT_NUMBER_OF_CHILDREN = 0;
    private static final int DEFAULT_NUMBER_OF_BABIES = 0;

    @FutureOrPresent
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate checkinDate;

    @FutureOrPresent
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate checkoutDate;

    @PositiveOrZero
    private Integer startPrice;

    @PositiveOrZero
    private Integer endPrice;

    @Positive
    private Integer numberOfAdults;

    @PositiveOrZero
    private Integer numberOfChildren;

    @PositiveOrZero
    private Integer numberOfBabies;

    public AccommodationRequest(LocalDate checkinDate, LocalDate checkoutDate, Integer startPrice, Integer endPrice, Integer numberOfAdults, Integer numberOfChildren, Integer numberOfBabies) {
        this.checkinDate = checkinDate;
        this.checkoutDate = checkoutDate;
        this.startPrice = startPrice;
        this.endPrice = endPrice;
        this.numberOfAdults = numberOfAdults != null ? numberOfAdults : DEFAULT_NUMBER_OF_ADULTS;
        this.numberOfChildren = numberOfChildren != null ? numberOfChildren : DEFAULT_NUMBER_OF_CHILDREN;
        this.numberOfBabies = numberOfBabies != null ? numberOfBabies : DEFAULT_NUMBER_OF_BABIES;
    }

    public static AccommodationRequestBuilder builder() {
        return AccommodationRequestBuilder.anAccommodationRequest();
    }

    @AssertTrue(message = "체크인 날짜가 체크아웃 날짜 이전이어야 합니다.")
    private boolean isCheckInDateBeforeCheckOutDate() {
        if (isCheckInDateAndCheckOutDateExists()) {
            return checkinDate.isBefore(checkoutDate);
        }

        return true;
    }

    @AssertTrue(message = "시작 금액이 종료 금액보다 작거나 같아야 합니다.")
    private boolean isStartPriceLessThanOrEqualToEndPrice() {
        if (startPrice != null && endPrice != null) {
            return startPrice <= endPrice;
        }

        return true;
    }

    private boolean isCheckInDateAndCheckOutDateExists() {
        return checkinDate != null && checkoutDate != null;
    }

    public int nights() {
        if (isCheckInDateAndCheckOutDateExists()) {
            return checkinDate.until(checkoutDate).getDays();
        }

        return DEFAULT_NUMBER_OF_NIGHTS;
    }

    public LocalDate getCheckinDate() {
        return checkinDate;
    }

    public LocalDate getCheckoutDate() {
        return checkoutDate;
    }

    public Integer getStartPrice() {
        return startPrice;
    }

    public Integer getEndPrice() {
        return endPrice;
    }

    public Integer getNumberOfAdults() {
        return numberOfAdults;
    }

    public Integer getNumberOfChildren() {
        return numberOfChildren;
    }

    public Integer getNumberOfBabies() {
        return numberOfBabies;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AccommodationRequest that = (AccommodationRequest) o;
        return Objects.equals(checkinDate, that.checkinDate) && Objects.equals(checkoutDate, that.checkoutDate) && Objects.equals(startPrice, that.startPrice) && Objects.equals(endPrice, that.endPrice) && Objects.equals(numberOfAdults, that.numberOfAdults) && Objects.equals(numberOfChildren, that.numberOfChildren) && Objects.equals(numberOfBabies, that.numberOfBabies);
    }

    @Override
    public int hashCode() {
        return Objects.hash(checkinDate, checkoutDate, startPrice, endPrice, numberOfAdults, numberOfChildren, numberOfBabies);
    }

    @Override
    public String toString() {
        return "AccommodationRequest{" +
                       "checkinDate=" + checkinDate +
                       ", checkoutDate=" + checkoutDate +
                       ", startPrice=" + startPrice +
                       ", endPrice=" + endPrice +
                       ", numberOfAdults=" + numberOfAdults +
                       ", numberOfChildren=" + numberOfChildren +
                       ", numberOfBabies=" + numberOfBabies +
                       '}';
    }
}
