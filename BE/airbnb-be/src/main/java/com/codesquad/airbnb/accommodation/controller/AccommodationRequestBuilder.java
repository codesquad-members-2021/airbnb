package com.codesquad.airbnb.accommodation.controller;

import java.time.LocalDate;

public final class AccommodationRequestBuilder {
    private LocalDate checkinDate;
    private LocalDate checkoutDate;
    private Integer startPrice;
    private Integer endPrice;
    private Integer numberOfAdults;
    private Integer numberOfChildren;
    private Integer numberOfBabies;

    private AccommodationRequestBuilder() {
    }

    public static AccommodationRequestBuilder anAccommodationRequest() {
        return new AccommodationRequestBuilder();
    }

    public AccommodationRequestBuilder checkinDate(LocalDate checkinDate) {
        this.checkinDate = checkinDate;
        return this;
    }

    public AccommodationRequestBuilder checkoutDate(LocalDate checkoutDate) {
        this.checkoutDate = checkoutDate;
        return this;
    }

    public AccommodationRequestBuilder startPrice(Integer startPrice) {
        this.startPrice = startPrice;
        return this;
    }

    public AccommodationRequestBuilder endPrice(Integer endPrice) {
        this.endPrice = endPrice;
        return this;
    }

    public AccommodationRequestBuilder numberOfAdults(Integer numberOfAdults) {
        this.numberOfAdults = numberOfAdults;
        return this;
    }

    public AccommodationRequestBuilder numberOfChildren(Integer numberOfChildren) {
        this.numberOfChildren = numberOfChildren;
        return this;
    }

    public AccommodationRequestBuilder numberOfBabies(Integer numberOfBabies) {
        this.numberOfBabies = numberOfBabies;
        return this;
    }

    public AccommodationRequest build() {
        return new AccommodationRequest(checkinDate, checkoutDate, startPrice, endPrice, numberOfAdults, numberOfChildren, numberOfBabies);
    }
}
