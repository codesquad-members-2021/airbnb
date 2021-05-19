package com.codesquad.airbnb.accommodation.domain;

import com.fasterxml.jackson.annotation.JsonProperty;

public class AccommodationOption {
    private int capacity;
    private int pricePerNight;
    private AccommodationType accommodationType;
    private int bedroomCount;
    private int restroomCount;
    private RestroomType restroomType;
    private boolean hasKitchen;
    private boolean hasInternet;
    private boolean hasAirconditioner;
    private boolean hasHairdrier;

    public AccommodationOption() {
    }

    public AccommodationOption(int capacity, int pricePerNight, AccommodationType accommodationType, int bedroomCount, int restroomCount, RestroomType restroomType, boolean hasKitchen, boolean hasInternet, boolean hasAirconditioner, boolean hasHairdrier) {
        this.capacity = capacity;
        this.pricePerNight = pricePerNight;
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

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public int getPricePerNight() {
        return pricePerNight;
    }

    public void setPricePerNight(int pricePerNight) {
        this.pricePerNight = pricePerNight;
    }

    public AccommodationType getAccommodationType() {
        return accommodationType;
    }

    public void setAccommodationType(AccommodationType accommodationType) {
        this.accommodationType = accommodationType;
    }

    public int getBedroomCount() {
        return bedroomCount;
    }

    public void setBedroomCount(int bedroomCount) {
        this.bedroomCount = bedroomCount;
    }

    public int getRestroomCount() {
        return restroomCount;
    }

    public void setRestroomCount(int restroomCount) {
        this.restroomCount = restroomCount;
    }

    public RestroomType getRestroomType() {
        return restroomType;
    }

    public void setRestroomType(RestroomType restroomType) {
        this.restroomType = restroomType;
    }

    @JsonProperty("hasKitchen")
    public boolean hasKitchen() {
        return hasKitchen;
    }

    public void setHasKitchen(boolean hasKitchen) {
        this.hasKitchen = hasKitchen;
    }

    @JsonProperty("hasInternet")
    public boolean hasInternet() {
        return hasInternet;
    }

    public void setHasInternet(boolean hasInternet) {
        this.hasInternet = hasInternet;
    }

    @JsonProperty("hasAirconditioner")
    public boolean hasAirconditioner() {
        return hasAirconditioner;
    }

    public void setHasAirconditioner(boolean hasAirconditioner) {
        this.hasAirconditioner = hasAirconditioner;
    }

    @JsonProperty("hasHairdrier")
    public boolean hasHairdrier() {
        return hasHairdrier;
    }

    public void setHasHairdrier(boolean hasHairdrier) {
        this.hasHairdrier = hasHairdrier;
    }

    @Override
    public String toString() {
        return "AccommodationOption{" +
                "capacity=" + capacity +
                ", pricePerNight=" + pricePerNight +
                ", accommodationType='" + accommodationType + '\'' +
                ", bedroomCount=" + bedroomCount +
                ", restroomCount=" + restroomCount +
                ", restroomType='" + restroomType + '\'' +
                ", hasKitchen=" + hasKitchen +
                ", hasInternet=" + hasInternet +
                ", hasAirconditioner=" + hasAirconditioner +
                ", hasHairdrier=" + hasHairdrier +
                '}';
    }
}
