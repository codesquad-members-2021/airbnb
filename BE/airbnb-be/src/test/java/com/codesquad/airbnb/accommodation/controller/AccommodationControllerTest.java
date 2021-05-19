package com.codesquad.airbnb.accommodation.controller;

import com.codesquad.airbnb.accommodation.service.AccommodationService;
import com.codesquad.airbnb.common.Consts;
import com.codesquad.airbnb.utils.DummyDataFactory;
import com.fasterxml.jackson.databind.ObjectMapper;
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
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import java.util.List;
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
    void readAll(String url, List<AccommodationResponseDTO> valueWillReturn, List<AccommodationResponseDTO> expected) throws Exception {
        BDDMockito.given(accommodationService.readAll())
                .willReturn(valueWillReturn);

        String responseBody = mockMvc.perform(MockMvcRequestBuilders.get(url))
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
                        DummyDataFactory.accommodationResponseDTOsWithId(),
                        DummyDataFactory.accommodationResponseDTOsWithId()
                )
        );
    }
}
