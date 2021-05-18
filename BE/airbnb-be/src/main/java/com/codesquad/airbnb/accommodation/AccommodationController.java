package com.codesquad.airbnb.accommodation;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
public class AccommodationController {

    @GetMapping("/accommodations")
    public List<AccommodationResponseDTO> readAll() {
        return Arrays.asList(
                AccommodationResponseDTO.builder()
                        .id(1L)
                        .name("코드스쿼드")
                        .accommodationOption(
                                AccommodationOption.builder()
                                        .capacity(4)
                                        .pricePerNight(10000)
                                        .accommodationType("일반")
                                        .bedroomCount(1)
                                        .restroomCount(1)
                                        .restroomType("단독")
                                        .hasKitchen(false)
                                        .hasInternet(true)
                                        .hasAirconditioner(true)
                                        .hasHairdrier(true)
                                        .build()
                        )
                        .reviewRating(4.5)
                        .reviewCounts(5)
                        .mainImage("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg")
                        .build(),
                AccommodationResponseDTO.builder()
                        .id(1L)
                        .name("코드스쿼드")
                        .accommodationOption(
                                AccommodationOption.builder()
                                        .capacity(4)
                                        .pricePerNight(10000)
                                        .accommodationType("일반")
                                        .bedroomCount(1)
                                        .restroomCount(1)
                                        .restroomType("단독")
                                        .hasKitchen(false)
                                        .hasInternet(true)
                                        .hasAirconditioner(true)
                                        .hasHairdrier(true)
                                        .build()
                        )
                        .reviewRating(4.5)
                        .reviewCounts(5)
                        .mainImage("https://image.zdnet.co.kr/2016/12/08/imc_47ix3fAqITYz5QtR.jpg")
                        .build()
        );
    }
}
