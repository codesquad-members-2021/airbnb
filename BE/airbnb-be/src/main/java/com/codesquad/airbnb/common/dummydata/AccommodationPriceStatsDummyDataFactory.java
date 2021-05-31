package com.codesquad.airbnb.common.dummydata;

import com.codesquad.airbnb.accommodation.controller.AccommodationPriceStats;

import java.util.Arrays;
import java.util.List;

public class AccommodationPriceStatsDummyDataFactory {
    private AccommodationPriceStatsDummyDataFactory(){}

    public static List<AccommodationPriceStats> list() {
        return Arrays.asList(
                new AccommodationPriceStats(10000, 10),
                new AccommodationPriceStats(30000, 11),
                new AccommodationPriceStats(20000, 21)
        );
    }
}
