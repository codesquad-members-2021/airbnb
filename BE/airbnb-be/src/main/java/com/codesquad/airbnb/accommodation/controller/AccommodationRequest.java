package com.codesquad.airbnb.accommodation.controller;

import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.FutureOrPresent;
import javax.validation.constraints.Positive;
import javax.validation.constraints.PositiveOrZero;
import java.time.LocalDate;
import java.util.Objects;

public class AccommodationRequest {

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
    private Integer numberOfPeople;

    public AccommodationRequest(LocalDate checkinDate, LocalDate checkoutDate, Integer startPrice, Integer endPrice, Integer numberOfPeople) {
        this.checkinDate = checkinDate;
        this.checkoutDate = checkoutDate;
        this.startPrice = startPrice;
        this.endPrice = endPrice;
        this.numberOfPeople = numberOfPeople;
    }

    @AssertTrue(message = "체크인 날짜가 체크아웃 날짜 이전이어야 합니다.")
    private boolean isCheckInDateBeforeCheckOutDate() {
        if (checkinDate != null && checkoutDate != null) {
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

    public Integer getNumberOfPeople() {
        return numberOfPeople;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AccommodationRequest that = (AccommodationRequest) o;
        return Objects.equals(checkinDate, that.checkinDate) && Objects.equals(checkoutDate, that.checkoutDate) && Objects.equals(startPrice, that.startPrice) && Objects.equals(endPrice, that.endPrice) && Objects.equals(numberOfPeople, that.numberOfPeople);
    }

    @Override
    public int hashCode() {
        return Objects.hash(checkinDate, checkoutDate, startPrice, endPrice, numberOfPeople);
    }

    @Override
    public String toString() {
        return "AccommodationRequest{" +
                       "checkin=" + checkinDate +
                       ", checkout=" + checkoutDate +
                       ", startPrice=" + startPrice +
                       ", endPrice=" + endPrice +
                       ", numberOfPeople=" + numberOfPeople +
                       '}';
    }
}
