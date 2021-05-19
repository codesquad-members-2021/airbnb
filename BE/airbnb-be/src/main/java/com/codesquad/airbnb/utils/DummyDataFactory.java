package com.codesquad.airbnb.utils;

import com.codesquad.airbnb.accommodation.AccommodationOption;
import com.codesquad.airbnb.accommodation.AccommodationResponseDTO;
import com.codesquad.airbnb.accommodation.AccommodationType;
import com.codesquad.airbnb.accommodation.RestroomType;

import java.util.Arrays;
import java.util.List;

public class DummyDataFactory {
    private DummyDataFactory() {
    }

    public static AccommodationOption accommodationOptionOfNormal() {
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

    public static AccommodationOption accommodationOptionOfOneroom() {
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

    public static AccommodationOption accommodationOptionOfPublicRestroom() {
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

    public static AccommodationResponseDTO accommodationResponseDTOTypeSuiteroom() {
        return AccommodationResponseDTO.builder()
                .name("어텀호텔 스위트룸")
                .accommodationOption(accommodationOptionOfNormal())
                .reviewRating(4.8)
                .reviewCounts(5)
                .mainImage("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg")
                .build();
    }

    public static AccommodationResponseDTO accommodationResponseDTOTypeOneroom() {
        return AccommodationResponseDTO.builder()
                .name("롤로호텔 일반객실")
                .accommodationOption(accommodationOptionOfOneroom())
                .reviewRating(4.2)
                .reviewCounts(5)
                .mainImage("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg")
                .build();
    }

    public static AccommodationResponseDTO accommodationResponseDTOTypeLowQuality() {
        return AccommodationResponseDTO.builder()
                .name("프레디 여관")
                .accommodationOption(accommodationOptionOfPublicRestroom())
                .reviewRating(3.1)
                .reviewCounts(5)
                .mainImage("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg")
                .build();
    }

    public static List<AccommodationResponseDTO> accommodationResponseDTOs() {
        return Arrays.asList(
                DummyDataFactory.accommodationResponseDTOTypeSuiteroom(),
                DummyDataFactory.accommodationResponseDTOTypeOneroom(),
                DummyDataFactory.accommodationResponseDTOTypeLowQuality()
        );
    }
}
