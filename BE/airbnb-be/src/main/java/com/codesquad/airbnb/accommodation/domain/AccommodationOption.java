package com.codesquad.airbnb.accommodation.domain;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Objects;

public class AccommodationOption {
    private int capacity;
    private AccommodationType accommodationType;
    private int bedroomCount;
    private int restroomCount;
    private RestroomType restroomType;
    private boolean hasKitchen;
    private boolean hasInternet;
    private boolean hasAirconditioner;
    private boolean hasHairdrier;

    private AccommodationOption() {
    }

    protected AccommodationOption(int capacity, AccommodationType accommodationType, int bedroomCount, int restroomCount, RestroomType restroomType, boolean hasKitchen, boolean hasInternet, boolean hasAirconditioner, boolean hasHairdrier) {
        this.capacity = capacity;
        this.accommodationType = accommodationType;
        this.bedroomCount = bedroomCount;
        this.restroomCount = restroomCount;
        this.restroomType = restroomType;
        this.hasKitchen = hasKitchen;
        this.hasInternet = hasInternet;
        this.hasAirconditioner = hasAirconditioner;
        this.hasHairdrier = hasHairdrier;
    }

    public static AccommodationOptionBuilder builder() {
        return AccommodationOptionBuilder.anAccommodationOption();
    }

    public int getCapacity() {
        return capacity;
    }

    public AccommodationType getAccommodationType() {
        return accommodationType;
    }

    public int getBedroomCount() {
        return bedroomCount;
    }

    public int getRestroomCount() {
        return restroomCount;
    }

    public RestroomType getRestroomType() {
        return restroomType;
    }

    @JsonProperty("hasKitchen")
    public boolean hasKitchen() {
        return hasKitchen;
    }

    @JsonProperty("hasInternet")
    public boolean hasInternet() {
        return hasInternet;
    }

    @JsonProperty("hasAirconditioner")
    public boolean hasAirconditioner() {
        return hasAirconditioner;
    }

    @JsonProperty("hasHairdrier")
    public boolean hasHairdrier() {
        return hasHairdrier;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AccommodationOption that = (AccommodationOption) o;
        return capacity == that.capacity && bedroomCount == that.bedroomCount && restroomCount == that.restroomCount && hasKitchen == that.hasKitchen && hasInternet == that.hasInternet && hasAirconditioner == that.hasAirconditioner && hasHairdrier == that.hasHairdrier && accommodationType == that.accommodationType && restroomType == that.restroomType;
    }

    @Override
    public int hashCode() {
        return Objects.hash(capacity, accommodationType, bedroomCount, restroomCount, restroomType, hasKitchen, hasInternet, hasAirconditioner, hasHairdrier);
    }

    @Override
    public String toString() {
        return "AccommodationOption{" +
                       "capacity=" + capacity +
                       ", accommodationType=" + accommodationType +
                       ", bedroomCount=" + bedroomCount +
                       ", restroomCount=" + restroomCount +
                       ", restroomType=" + restroomType +
                       ", hasKitchen=" + hasKitchen +
                       ", hasInternet=" + hasInternet +
                       ", hasAirconditioner=" + hasAirconditioner +
                       ", hasHairdrier=" + hasHairdrier +
                       '}';
    }
}
