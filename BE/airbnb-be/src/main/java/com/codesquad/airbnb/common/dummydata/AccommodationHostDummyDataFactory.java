package com.codesquad.airbnb.common.dummydata;

import com.codesquad.airbnb.accommodation.controller.AccommodationHost;

public class AccommodationHostDummyDataFactory {
    private AccommodationHostDummyDataFactory() {
    }

    public static AccommodationHost create() {
        return new AccommodationHost(1L, "name", "https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg");
    }
}
