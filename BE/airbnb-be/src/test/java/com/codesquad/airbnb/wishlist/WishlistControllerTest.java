package com.codesquad.airbnb.wishlist;

import com.codesquad.airbnb.common.utils.DummyDataFactory;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpStatus;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.List;
import java.util.stream.Stream;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
class WishlistControllerTest {
    private static final String BASE_URL = "http://localhost";

    @LocalServerPort
    private int port;

    @Autowired
    private TestRestTemplate restTemplate;

    @ParameterizedTest
    @MethodSource("readAllProvider")
    void readAll(String path, long userId, List<WishlistItemDTO> expected) {
        UriComponents uriComponents = UriComponentsBuilder.fromHttpUrl(BASE_URL)
                                              .path(path)
                                              .port(port)
                                              .buildAndExpand(userId);

        ResponseEntity<List<WishlistItemDTO>> responseEntity = restTemplate.exchange(
                RequestEntity.get(uriComponents.toUri()).build(),
                new ParameterizedTypeReference<List<WishlistItemDTO>>() {
                }
        );

        assertThat(responseEntity.getStatusCode()).isEqualTo(HttpStatus.OK);
        assertThat(responseEntity.getBody()).isEqualTo(expected);
    }

    @SuppressWarnings("unused")
    static Stream<Arguments> readAllProvider() {
        return Stream.of(
                Arguments.of(
                        "/users/{userId}/wishlist",
                        1L,
                        DummyDataFactory.wishlist()
                )
        );
    }
}
