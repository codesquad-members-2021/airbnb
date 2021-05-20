package codesquad.team17.gnb.place.domain;

import codesquad.team17.gnb.exception.NotFoundException;
import org.assertj.core.api.SoftAssertions;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.JdbcTest;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import java.time.LocalDate;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

@JdbcTest
class PlaceRepositoryTest {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;
    private PlaceRepository placeRepository;

    private SoftAssertions softly;

    @BeforeEach
    void setUp() {
        placeRepository = new JdbcPlaceRepository(jdbcTemplate);
        softly = new SoftAssertions();
    }

    @AfterEach
    void afterEach() {
        softly.assertAll();
    }

    @Test
    void getPlace() {
        Place place = placeRepository.findById(1L).orElseThrow(() -> new NotFoundException("숙소 없음"));
        assertThat(place).hasFieldOrPropertyWithValue("name", "코드스쿼드");
    }

    @Test
    void noPlace() {
        assertThatThrownBy(() -> placeRepository.findById(3L).orElseThrow(() -> new NotFoundException("숙소 없음")))
                .isInstanceOf(NotFoundException.class);
    }

    @Test
    void findAll() {
        assertThat(placeRepository.findAll()).hasSize(2);
    }

    @Test
    void findByStayPeriod() {
        softly.assertThat(placeRepository
                .findAllByStayPeriod(LocalDate.of(2021, 5, 22), LocalDate.of(2021, 5, 25)))
                .hasSize(2);

        softly.assertThat(placeRepository
                .findAllByStayPeriod(LocalDate.of(2021, 5, 18), LocalDate.of(2021, 5, 25)))
                .hasSize(1);

        softly.assertThat(placeRepository
                .findAllByStayPeriod(LocalDate.of(2021, 5, 17), LocalDate.of(2021, 5, 18)))
                .hasSize(2);

        softly.assertThat(placeRepository
                .findAllByStayPeriod(LocalDate.of(2021, 5, 18), LocalDate.of(2021, 5, 21)))
                .hasSize(1);

        softly.assertThat(placeRepository
                .findAllByStayPeriod(LocalDate.of(2021, 5, 17), LocalDate.of(2021, 5, 21)))
                .hasSize(1);
    }
}
