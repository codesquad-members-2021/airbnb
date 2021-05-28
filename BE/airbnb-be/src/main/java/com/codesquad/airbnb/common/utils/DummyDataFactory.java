package com.codesquad.airbnb.common.utils;

import com.codesquad.airbnb.accommodation.controller.*;
import com.codesquad.airbnb.accommodation.domain.Accommodation;
import com.codesquad.airbnb.accommodation.domain.AccommodationOption;
import com.codesquad.airbnb.accommodation.domain.AccommodationType;
import com.codesquad.airbnb.accommodation.domain.RestroomType;
import com.codesquad.airbnb.reservation.controller.ReservationDTO;
import com.codesquad.airbnb.wishlist.WishlistItemDTO;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

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

    public static AccommodationHost accommodationHost() {
        return new AccommodationHost(1L, "name", "https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg");
    }

    public static Accommodation accommodationTypeSuiteroom() {
        return Accommodation.builder()
                       .name("어텀호텔 스위트룸")
                       .accommodationOption(accommodationOptionOfNormal())
                       .reviewRating(4.8)
                       .reviewCounts(5)
                       .mainImage("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg")
                       .images(Arrays.asList("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg", "https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg"))
                       .description("어텀호텔 스위트룸입니다.")
                       .accommodationHost(accommodationHost())
                       .build();
    }

    public static Accommodation accommodationTypeOneroom() {
        return Accommodation.builder()
                       .name("롤로호텔 일반객실")
                       .accommodationOption(accommodationOptionOfOneroom())
                       .reviewRating(4.2)
                       .reviewCounts(5)
                       .mainImage("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg")
                       .images(Arrays.asList("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg", "https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg"))
                       .description("롤로호텔 일반객실입니다.")
                       .accommodationHost(accommodationHost())
                       .build();
    }

    public static Accommodation accommodationTypeLowQuality() {
        return Accommodation.builder()
                       .name("프레디 여관")
                       .accommodationOption(accommodationOptionOfPublicRestroom())
                       .reviewRating(3.1)
                       .reviewCounts(5)
                       .mainImage("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg")
                       .images(Arrays.asList("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg", "https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg"))
                       .description("프레디 여관입니다.")
                       .accommodationHost(accommodationHost())
                       .build();
    }

    public static List<Accommodation> accommodations() {
        return Arrays.asList(
                DummyDataFactory.accommodationTypeSuiteroom(),
                DummyDataFactory.accommodationTypeOneroom(),
                DummyDataFactory.accommodationTypeLowQuality()
        );
    }

    public static List<AccommodationResponse> accommodationResponseDTOs() {
        return accommodations().stream()
                       .map(AccommodationResponse::from)
                       .collect(Collectors.toList());
    }

    public static List<AccommodationResponse> accommodationResponseDTOsWithId() {
        List<AccommodationResponse> accommodationResponses = accommodationResponseDTOs();

        for (int i = 0; i < accommodationResponses.size(); i++) {
            accommodationResponses.get(i).setId(Long.valueOf(i + 1));
        }

        return accommodationResponses;
    }

    public static List<AccommodationDTO> accommodationDTOsWithId() {
        List<AccommodationDTO> accommodationDTO = accommodations().stream()
                                                          .map(AccommodationDTO::from)
                                                          .collect(Collectors.toList());

        for (int i = 0; i < accommodationDTO.size(); i++) {
            accommodationDTO.get(i).setId(Long.valueOf(i + 1));
        }

        return accommodationDTO;
    }

    public static List<AccommodationPriceStats> accommodationPriceStats() {
        return Arrays.asList(
                new AccommodationPriceStats(10000, 10),
                new AccommodationPriceStats(30000, 11),
                new AccommodationPriceStats(20000, 21)
        );
    }

    public static AccommodationReservationInfo accommodationReservationInfo() {
        return AccommodationReservationInfo.builder()
                       .id(1L)
                       .pricePerNight(71466)
                       .priceForNights(1322396)
                       .salePrice(55948)
                       .cleaningPrice(25996)
                       .serviceFee(8188)
                       .accommodationTax(819)
                       .totalPrice(1488195)
                       .reviewCounts(127)
                       .build();
    }

    public static List<ReservationDTO> reservations() {
        return Arrays.asList(DummyDataFactory.reservation(), DummyDataFactory.reservation());
    }

    public static ReservationDTO reservation() {
        return new ReservationDTO(1L, AccommodationResponse.from(accommodationTypeSuiteroom()));
    }

    public static List<WishlistItemDTO> wishlist() {
        return Arrays.asList(DummyDataFactory.wishlistItem(), DummyDataFactory.wishlistItem());
    }

    public static WishlistItemDTO wishlistItem() {
        return new WishlistItemDTO(1L, AccommodationResponse.from(accommodationTypeSuiteroom()));
    }
}
