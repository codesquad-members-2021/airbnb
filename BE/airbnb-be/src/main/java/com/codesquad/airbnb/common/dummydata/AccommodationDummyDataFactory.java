package com.codesquad.airbnb.common.dummydata;

import com.codesquad.airbnb.accommodation.domain.Accommodation;
import com.codesquad.airbnb.accommodation.domain.AccommodationBuilder;
import com.codesquad.airbnb.accommodation.domain.price.Price;

import java.util.Arrays;
import java.util.List;

public class AccommodationDummyDataFactory {
    private AccommodationDummyDataFactory() {
    }

    public static AccommodationBuilder builderWithSuiteRoom() {
        return Accommodation.builder()
                       .name("어텀호텔 스위트룸")
                       .accommodationOption(AccommodationOptionDummyDataFactory.normal())
                       .reviewRating(4.8)
                       .reviewCounts(5)
                       .mainImage("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg")
                       .images(Arrays.asList("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg", "https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg"))
                       .description("어텀호텔 스위트룸입니다.")
                       .accommodationHost(AccommodationHostDummyDataFactory.create())
                       .accommodationPrice(Price.from(400000));
    }

    public static AccommodationBuilder builderWithOneRoom() {
        return Accommodation.builder()
                       .name("롤로호텔 일반객실")
                       .accommodationOption(AccommodationOptionDummyDataFactory.oneRoom())                       .accommodationPrice(400000)
                       .reviewRating(4.2)
                       .reviewCounts(5)
                       .mainImage("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg")
                       .images(Arrays.asList("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg", "https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg"))
                       .description("롤로호텔 일반객실입니다.")
                       .accommodationHost(AccommodationHostDummyDataFactory.create())
                       .accommodationPrice(Price.from(200000));
    }

    public static AccommodationBuilder builderWithLowQuality() {
        return Accommodation.builder()
                       .name("프레디 여관")
                       .accommodationOption(AccommodationOptionDummyDataFactory.publicRestroom())
                       .reviewRating(3.1)
                       .reviewCounts(5)
                       .mainImage("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg")
                       .images(Arrays.asList("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg", "https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg"))
                       .description("프레디 여관입니다.")
                       .accommodationHost(AccommodationHostDummyDataFactory.create())
                       .accommodationPrice(Price.from(40000));
    }

    public static List<Accommodation> list() {
        return Arrays.asList(
                builderWithSuiteRoom().build(),
                builderWithOneRoom().build(),
                builderWithLowQuality().build()
        );
    }

    public static List<Accommodation> listWithId() {
        return Arrays.asList(
                builderWithSuiteRoom().id(1L).build(),
                builderWithOneRoom().id(2L).build(),
                builderWithLowQuality().id(3L).build()
        );
    }
}
