package com.codesquad.airbnb.accommodation.domain;

public final class AccommodationOptionBuilder {
    private int capacity;
    private AccommodationType accommodationType;
    private int bedroomCount;
    private int restroomCount;
    private RestroomType restroomType;
    private boolean hasKitchen;
    private boolean hasInternet;
    private boolean hasAirconditioner;
    private boolean hasHairdrier;

    private AccommodationOptionBuilder() {
    }

    public static AccommodationOptionBuilder anAccommodationOption() {
        return new AccommodationOptionBuilder();
    }

    public AccommodationOptionBuilder capacity(int capacity) {
        this.capacity = capacity;
        return this;
    }

    public AccommodationOptionBuilder accommodationType(AccommodationType accommodationType) {
        this.accommodationType = accommodationType;
        return this;
    }

    public AccommodationOptionBuilder bedroomCount(int bedroomCount) {
        this.bedroomCount = bedroomCount;
        return this;
    }

    public AccommodationOptionBuilder restroomCount(int restroomCount) {
        this.restroomCount = restroomCount;
        return this;
    }

    public AccommodationOptionBuilder restroomType(RestroomType restroomType) {
        this.restroomType = restroomType;
        return this;
    }

    public AccommodationOptionBuilder hasKitchen(boolean hasKitchen) {
        this.hasKitchen = hasKitchen;
        return this;
    }

    public AccommodationOptionBuilder hasInternet(boolean hasInternet) {
        this.hasInternet = hasInternet;
        return this;
    }

    public AccommodationOptionBuilder hasAirconditioner(boolean hasAirconditioner) {
        this.hasAirconditioner = hasAirconditioner;
        return this;
    }

    public AccommodationOptionBuilder hasHairdrier(boolean hasHairdrier) {
        this.hasHairdrier = hasHairdrier;
        return this;
    }

    public AccommodationOption build() {
        return new AccommodationOption(capacity, accommodationType, bedroomCount, restroomCount, restroomType, hasKitchen, hasInternet, hasAirconditioner, hasHairdrier);
    }
}
