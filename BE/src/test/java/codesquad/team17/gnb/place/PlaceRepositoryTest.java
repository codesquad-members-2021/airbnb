package codesquad.team17.gnb.place;

import codesquad.team17.gnb.exception.NotFoundException;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.JdbcTest;
import org.springframework.jdbc.core.JdbcTemplate;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

@JdbcTest
class PlaceRepositoryTest {

    @Autowired
    private JdbcTemplate jdbcTemplate;
    private PlaceRepository placeRepository;

    @BeforeEach
    void setUp() {
        placeRepository = new JdbcPlaceRepository(jdbcTemplate);
    }

    @Test
    void getPlace() {
        Place place = placeRepository.findById(1L).orElseThrow(() -> new NotFoundException("숙소 없음"));
        assertThat(place).hasFieldOrPropertyWithValue("name", "서울호스텔");
    }

    @Test
    void noPlace() {
        assertThatThrownBy(() -> placeRepository.findById(3L).orElseThrow(() -> new NotFoundException("숙소 없음")))
                .isInstanceOf(NotFoundException.class);
    }
}
