package mj.airbnb.web.dto;

import mj.airbnb.domain.accommodation.Accommodation;

import java.math.BigDecimal;

public class AccommodationInDetailResponseDto {

    private final String name;
    private final Integer maxPeople;
    private final String type;
    private final Integer numOfBed;
    private final Integer numOfBathroom;
    private final BigDecimal price;
    private final String hostName;
    private final String description;

    public AccommodationInDetailResponseDto(Accommodation accommodation) {
        this.name = accommodation.getName();
        this.maxPeople = accommodation.getMaxNumOfPeople();
        this.type = accommodation.getType();
        this.numOfBed = accommodation.getNumOfBed();
        this.numOfBathroom = accommodation.getNumOfBathroom();
        this.price = accommodation.getPrice();
        this.hostName = accommodation.getHostName();
        this.description = accommodation.getDescription();
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

    public BigDecimal getPrice() {
        return price;
    }

    public String getHostName() {
        return hostName;
    }

    public String getDescription() {
        return description;
    }
}
