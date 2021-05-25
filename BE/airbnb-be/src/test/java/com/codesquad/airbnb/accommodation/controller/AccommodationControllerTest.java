package com.codesquad.airbnb.accommodation.controller;

import com.codesquad.airbnb.accommodation.service.AccommodationService;
import com.codesquad.airbnb.common.Consts;
import com.codesquad.airbnb.common.exception.ErrorResponse;
import com.codesquad.airbnb.common.utils.DummyDataFactory;
import com.codesquad.airbnb.common.utils.StringUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.hamcrest.Matchers;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.mockito.BDDMockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.RequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static org.assertj.core.api.Assertions.assertThat;

@WebMvcTest(AccommodationController.class)
@AutoConfigureMockMvc
@ExtendWith(MockitoExtension.class)
class AccommodationControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private AccommodationService accommodationService;

    private ObjectMapper objectMapper = new ObjectMapper();

    @ParameterizedTest
    @MethodSource("readAllProvider")
    void readAll(String url, AccommodationRequestDTO accommodationRequestDTO, List<AccommodationResponseDTO> valueWillReturn, List<AccommodationResponseDTO> expected) throws Exception {
        BDDMockito.given(accommodationService.readAll(accommodationRequestDTO))
                .willReturn(valueWillReturn);

        RequestBuilder requestBuilder = MockMvcRequestBuilders.get(url)
                .queryParam("checkinDate", StringUtils.toStringNullToEmpty(accommodationRequestDTO.getCheckinDate()))
                .queryParam("checkoutDate", StringUtils.toStringNullToEmpty(accommodationRequestDTO.getCheckoutDate()))
                .queryParam("startPrice", StringUtils.toStringNullToEmpty(accommodationRequestDTO.getStartPrice()))
                .queryParam("endPrice", StringUtils.toStringNullToEmpty(accommodationRequestDTO.getEndPrice()))
                .queryParam("numberOfPeople", StringUtils.toStringNullToEmpty(accommodationRequestDTO.getNumberOfPeople()));

        String responseBody = mockMvc.perform(requestBuilder)
                .andDo(MockMvcResultHandlers.print())
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andExpect(MockMvcResultMatchers.content().contentType(Consts.CONTENT_TYPE_JSON_UTF8))
                .andReturn()
                .getResponse()
                .getContentAsString();

        List<AccommodationResponseDTO> result = objectMapper.readerForListOf(AccommodationResponseDTO.class).readValue(responseBody);

        assertThat(result).isEqualTo(expected);
    }

    @SuppressWarnings("unused")
    static Stream<Arguments> readAllProvider() {
        return Stream.of(
                Arguments.arguments(
                        "/accommodations",
                        new AccommodationRequestDTO(null, null, null, null, null),
                        DummyDataFactory.accommodationResponseDTOsWithId(),
                        DummyDataFactory.accommodationResponseDTOsWithId()
                ), Arguments.arguments(
                        "/accommodations",
                        new AccommodationRequestDTO(LocalDate.now(), LocalDate.now(), 0, 400000, 1),
                        DummyDataFactory.accommodationResponseDTOsWithId().stream()
                                .filter(accommodationResponseDTO -> accommodationResponseDTO.pricePerNight() <= 400000)
                                .collect(Collectors.toList()),
                        DummyDataFactory.accommodationResponseDTOsWithId().stream()
                                .filter(accommodationResponseDTO -> accommodationResponseDTO.pricePerNight() <= 400000)
                                .collect(Collectors.toList())
                )
        );
    }

    @ParameterizedTest
    @MethodSource("readAllValidationFailedProvider")
    void readAllValidationFailed(String url, AccommodationRequestDTO accommodationRequestDTO, ErrorResponse expected) throws Exception {
        RequestBuilder requestBuilder = MockMvcRequestBuilders.get(url)
                .queryParam("checkinDate", StringUtils.toStringNullToEmpty(accommodationRequestDTO.getCheckinDate()))
                .queryParam("checkoutDate", StringUtils.toStringNullToEmpty(accommodationRequestDTO.getCheckoutDate()))
                .queryParam("startPrice", StringUtils.toStringNullToEmpty(accommodationRequestDTO.getStartPrice()))
                .queryParam("endPrice", StringUtils.toStringNullToEmpty(accommodationRequestDTO.getEndPrice()))
                .queryParam("numberOfPeople", StringUtils.toStringNullToEmpty(accommodationRequestDTO.getNumberOfPeople()));

        String responseBody = mockMvc.perform(requestBuilder)
                .andDo(MockMvcResultHandlers.print())
                .andExpect(MockMvcResultMatchers.status().isBadRequest())
                .andExpect(MockMvcResultMatchers.content().contentType(Consts.CONTENT_TYPE_JSON_UTF8))
                .andReturn()
                .getResponse()
                .getContentAsString();

        ErrorResponse result = objectMapper.readValue(responseBody, ErrorResponse.class);

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
                        new AccommodationRequestDTO(null, null, -1, 0, 0),
                        new ErrorResponse(
                                400,
                                "BAD_REQUEST",
                                "Bad Request",
                                Arrays.asList(
                                        "numberOfPeople must be greater than 0",
                                        "startPrice must be greater than or equal to 0",
                                        "endPrice must be greater than 0"
                                )
                        )
                ), Arguments.arguments(
                        "/accommodations",
                        new AccommodationRequestDTO(LocalDate.now().minusDays(1), LocalDate.now().minusDays(1), null, null, null),
                        new ErrorResponse(
                                400,
                                "BAD_REQUEST",
                                "Bad Request",
                                Arrays.asList(
                                        "checkinDate must be a date in the present or in the future",
                                        "checkoutDate must be a date in the present or in the future"
                                )
                        )
                )
        );
    }
}
