package com.codesquad.airbnb.accommodation.controller;

import com.codesquad.airbnb.common.exception.ErrorResponse;
import com.codesquad.airbnb.common.exception.NotFoundException;
import com.codesquad.airbnb.common.utils.DummyDataFactory;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
class AccommodationControllerTest {
    private String BASE_URL = "http://localhost";

    @LocalServerPort
    private int port;

    @Autowired
    private TestRestTemplate restTemplate;

    @ParameterizedTest
    @MethodSource("readAllProvider")
    void readAll(String path, AccommodationRequest accommodationRequest, List<AccommodationResponse> expected) {
        ResponseEntity<List<AccommodationResponse>> responseEntity = restTemplate.exchange(
                RequestEntity.get(uriComponentsOf(path, accommodationRequest).toUri()).build(),
                new ParameterizedTypeReference<List<AccommodationResponse>>() {
                }
        );

        assertThat(responseEntity.getStatusCode()).isEqualTo(HttpStatus.OK);
        assertThat(responseEntity.getBody()).isEqualTo(expected);
    }

    @SuppressWarnings("unused")
    static Stream<Arguments> readAllProvider() {
        return Stream.of(
                Arguments.arguments(
                        "/accommodations",
                        new AccommodationRequest(null, null, null, null, null),
                        DummyDataFactory.accommodationResponseDTOsWithId()
                ), Arguments.arguments(
                        "/accommodations",
                        new AccommodationRequest(null, null, null, 300000, null),
                        DummyDataFactory.accommodationResponseDTOsWithId().stream()
                                .filter(accommodationResponseDTO -> accommodationResponseDTO.pricePerNight() <= 300000)
                                .collect(Collectors.toList())
                ), Arguments.arguments(
                        "/accommodations",
                        new AccommodationRequest(null, null, 100000, null, null),
                        DummyDataFactory.accommodationResponseDTOsWithId().stream()
                                .filter(accommodationResponseDTO -> 100000 <= accommodationResponseDTO.pricePerNight())
                                .collect(Collectors.toList())
                ), Arguments.arguments(
                        "/accommodations",
                        new AccommodationRequest(null, null, 100000, 300000, null),
                        DummyDataFactory.accommodationResponseDTOsWithId().stream()
                                .filter(accommodationResponseDTO -> 100000 <= accommodationResponseDTO.pricePerNight())
                                .filter(accommodationResponseDTO -> accommodationResponseDTO.pricePerNight() <= 300000)
                                .collect(Collectors.toList())
                )
        );
    }

    @ParameterizedTest
    @MethodSource("readAllValidationFailedProvider")
    void readAllValidationFailed(String path, AccommodationRequest accommodationRequest, ErrorResponse expected) throws JsonProcessingException {
        ResponseEntity<ErrorResponse> responseEntity = restTemplate.exchange(
                RequestEntity.get(uriComponentsOf(path, accommodationRequest).toUriString())
                        .header(HttpHeaders.ACCEPT_LANGUAGE, Locale.KOREA.toLanguageTag())
                        .build(),
                ErrorResponse.class
        );

        ErrorResponse result = responseEntity.getBody();

        assertThat(responseEntity.getStatusCode()).isEqualTo(HttpStatus.BAD_REQUEST);
        assertThat(result.getStatus()).isEqualTo(expected.getStatus());
        assertThat(result.getMessage()).isEqualTo(expected.getMessage());
        assertThat(result.getStatusCode()).isEqualTo(expected.getStatusCode());
        assertThat(result.getErrors()).containsExactlyInAnyOrderElementsOf(expected.getErrors());
    }

    @SuppressWarnings("unused")
    static Stream<Arguments> readAllValidationFailedProvider() {
        return Stream.of(
                Arguments.arguments(
                        "/accommodations",
                        new AccommodationRequest(null, null, -1, -1, 0),
                        new ErrorResponse(
                                400,
                                "BAD_REQUEST",
                                "Bad Request",
                                Arrays.asList(
                                        "numberOfPeople: 0보다 커야 합니다",
                                        "startPrice: 0 이상이어야 합니다",
                                        "endPrice: 0 이상이어야 합니다"
                                )
                        )
                ), Arguments.arguments(
                        "/accommodations",
                        new AccommodationRequest(LocalDate.now().minusDays(1), LocalDate.now().minusDays(1), null, null, null),
                        new ErrorResponse(
                                400,
                                "BAD_REQUEST",
                                "Bad Request",
                                Arrays.asList(
                                        "checkinDate: 현재 또는 미래의 날짜여야 합니다",
                                        "checkoutDate: 현재 또는 미래의 날짜여야 합니다",
                                        "checkInDateBeforeCheckOutDate: 체크인 날짜가 체크아웃 날짜 이전이어야 합니다."
                                )
                        )
                ), Arguments.arguments(
                        "/accommodations",
                        new AccommodationRequest(null, null, 10, 0, null),
                        new ErrorResponse(
                                400,
                                "BAD_REQUEST",
                                "Bad Request",
                                Arrays.asList(
                                        "startPriceLessThanOrEqualToEndPrice: 시작 금액이 종료 금액보다 작거나 같아야 합니다."
                                )
                        )
                )
        );
    }

    private UriComponents uriComponentsOf(String path, AccommodationRequest accommodationRequest) {
        return UriComponentsBuilder.fromHttpUrl(BASE_URL).path(path).port(port)
                       .queryParamIfPresent("checkinDate", Optional.ofNullable(accommodationRequest.getCheckinDate()))
                       .queryParamIfPresent("checkoutDate", Optional.ofNullable(accommodationRequest.getCheckoutDate()))
                       .queryParamIfPresent("startPrice", Optional.ofNullable(accommodationRequest.getStartPrice()))
                       .queryParamIfPresent("endPrice", Optional.ofNullable(accommodationRequest.getEndPrice()))
                       .queryParamIfPresent("numberOfPeople", Optional.ofNullable(accommodationRequest.getNumberOfPeople()))
                       .build();
    }

    @ParameterizedTest
    @MethodSource("readOneProvider")
    void readOne(String path, long id, AccommodationDTO expected) {

        UriComponents uriComponents = UriComponentsBuilder.fromHttpUrl(BASE_URL)
                                              .path(path)
                                              .port(port)
                                              .buildAndExpand(id);

        ResponseEntity<AccommodationDTO> responseEntity = restTemplate.getForEntity(
                uriComponents.toUri(),
                AccommodationDTO.class
        );

        assertThat(responseEntity.getStatusCode()).isEqualTo(HttpStatus.OK);
        assertThat(responseEntity.getBody()).isEqualTo(expected);
    }

    static Stream<Arguments> readOneProvider() {
        return Stream.of(
                Arguments.of(
                        "/accommodations/{id}",
                        1,
                        DummyDataFactory.accommodationDTOsWithId().stream()
                                .filter(accommodationDTO -> accommodationDTO.getId() == 1)
                                .findAny()
                                .orElseThrow(() -> new NotFoundException())
                )
        );
    }

    @ParameterizedTest
    @MethodSource("priceStatsProvider")
    void priceStats(String path, List<AccommodationPriceStats> expected) {

        UriComponents uriComponents = UriComponentsBuilder.fromHttpUrl(BASE_URL)
                                              .path(path)
                                              .port(port)
                                              .build();

        ResponseEntity<List<AccommodationPriceStats>> responseEntity = restTemplate.exchange(
                RequestEntity.get(uriComponents.toUri()).build(),
                new ParameterizedTypeReference<List<AccommodationPriceStats>>() {
                }
        );

        assertThat(responseEntity.getStatusCode()).isEqualTo(HttpStatus.OK);
        assertThat(responseEntity.getBody()).isEqualTo(expected);
    }

    static Stream<Arguments> priceStatsProvider() {
        return Stream.of(
                Arguments.of(
                        "/accommodationPriceStats",
                        DummyDataFactory.accommodationPriceStats()
                )
        );
    }
}
