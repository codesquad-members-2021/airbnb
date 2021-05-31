package com.codesquad.airbnb.accommodation.service;

import com.codesquad.airbnb.accommodation.controller.AccommodationRequest;
import com.codesquad.airbnb.accommodation.controller.AccommodationReservationInfo;
import com.codesquad.airbnb.accommodation.controller.AccommodationResponse;
import com.codesquad.airbnb.accommodation.domain.Accommodation;
import com.codesquad.airbnb.accommodation.repository.AccommodationRepository;
import com.codesquad.airbnb.common.utils.DummyDataFactory;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static org.assertj.core.api.BDDAssertions.then;
import static org.mockito.BDDMockito.given;

@SpringBootTest(classes = AccommodationService.class)
class AccommodationServiceImplTest {

    AccommodationService accommodationService;

    @Mock
    AccommodationRepository accommodationRepository;

    @BeforeEach
    void setUp() {
        accommodationService = new AccommodationServiceImpl(accommodationRepository);
    }

    @ParameterizedTest
    @MethodSource("readAllProvider")
    void readAll(AccommodationRequest accommodationRequest, List<Accommodation> given, List<AccommodationResponse> expected) {
        given(accommodationRepository.findAllBy(accommodationRequest))
                .willReturn(given);

        List<AccommodationResponse> actual = accommodationService.readAll(accommodationRequest);

        then(actual).isEqualTo(expected);
    }

    @SuppressWarnings("unused")
    static Stream<Arguments> readAllProvider() {
        return Stream.of(
                Arguments.of(
                        AccommodationRequest.builder().endPrice(300000).build(),
                        DummyDataFactory.accommodationsWithId().stream()
                                .collect(Collectors.toList()),
                        DummyDataFactory.accommodationResponseDTOsWithId().stream()
                                .collect(Collectors.toList())
                )
        );
    }
}
