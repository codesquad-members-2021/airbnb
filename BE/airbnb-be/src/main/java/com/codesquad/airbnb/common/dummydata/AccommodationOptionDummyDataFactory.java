package com.codesquad.airbnb.common.dummydata;

import com.codesquad.airbnb.accommodation.domain.AccommodationOption;
import com.codesquad.airbnb.accommodation.domain.AccommodationType;
import com.codesquad.airbnb.accommodation.domain.RestroomType;

public class AccommodationOptionDummyDataFactory {
    private AccommodationOptionDummyDataFactory(){}

    public static AccommodationOption normal() {
        return AccommodationOption.builder()
                       .capacity(8)
                       .pricePerNight(400000)
                       .accommodationType(AccommodationType.NORMAL)
                       .bedroomCount(3)
                       .restroomCount(2)
                       .restroomType(RestroomType.PRIVATE)
                       .hasKitchen(false)
                       .hasInternet(true)
                       .hasAirconditioner(true)
                       .hasHairdrier(true)
                       .build();
    }

    public static AccommodationOption oneRoom() {
        return AccommodationOption.builder()
                       .capacity(4)
                       .pricePerNight(200000)
                       .accommodationType(AccommodationType.ONEROOM)
                       .bedroomCount(1)
                       .restroomCount(1)
                       .restroomType(RestroomType.PRIVATE)
                       .hasKitchen(false)
                       .hasInternet(true)
                       .hasAirconditioner(true)
                       .hasHairdrier(true)
                       .build();
    }

    public static AccommodationOption publicRestroom() {
        return AccommodationOption.builder()
                       .capacity(2)
                       .pricePerNight(40000)
                       .accommodationType(AccommodationType.ONEROOM)
                       .bedroomCount(1)
                       .restroomCount(1)
                       .restroomType(RestroomType.PUBLIC)
                       .hasKitchen(false)
                       .hasInternet(false)
                       .hasAirconditioner(true)
                       .hasHairdrier(true)
                       .build();
    }
}
