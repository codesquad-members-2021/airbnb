package mj.airbnb.web.dto;

import mj.airbnb.domain.accommodation.Accommodation;

public class AccommodationResponseDto {

    private final String name;
    private final Integer maxPeople;
    private final String type;
    private final Integer numOfBed;
    private final Integer numOfBathroom;
    private final Integer cost;

    public AccommodationResponseDto(Accommodation accommodation) {
        this.name = accommodation.getName();
        this.maxPeople = accommodation.getMaxPeople();
        this.type = accommodation.getType();
        this.numOfBed = accommodation.getNumOfBed();
        this.numOfBathroom = accommodation.getNumOfBathroom();
        this.cost = accommodation.getPrice();
    }

    public String getName() {
        return name;
    }

    public Integer getMaxPeople() {
        return maxPeople;
    }

    public String getType() {
        return type;
    }

    public Integer getNumOfBed() {
        return numOfBed;
    }

    public Integer getNumOfBathroom() {
        return numOfBathroom;
    }

    public Integer getCost() {
        return cost;
    }
}
