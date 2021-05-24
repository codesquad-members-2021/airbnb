package team01.airbnb.repository;

import org.assertj.core.api.SoftAssertions;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.JdbcTest;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import team01.airbnb.domain.accommodation.AccommodationAddress;
import team01.airbnb.domain.accommodation.AccommodationCondition;

import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;

@JdbcTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
class AccommodationRepositoryTest {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    private AccommodationRepository accommodationRepository;
    private SoftAssertions softly;

    @BeforeEach
    void setUp() {
        accommodationRepository = new AccommodationRepository(jdbcTemplate);
        softly = new SoftAssertions();
    }

    @AfterEach
    void afterEach() {
        softly.assertAll();
    }

    @Test
    void getAddress() {
        softly.assertThat(accommodationRepository.findAddressByAccommodationId(1L)
                .orElseGet(null).getAddress())
                .isEqualTo("서초구");

        softly.assertThat(accommodationRepository.findAddressByAccommodationId(2L)
                .orElseGet(null).getAddress())
                .isEqualTo("강남구");

        softly.assertThat(accommodationRepository.findAddressByAccommodationId(3L)
                .orElseGet(null).getAddress())
                .isEqualTo("중구");
    }

    @Test
    void getCondition() {
        Optional<AccommodationCondition> accommodationCondition = accommodationRepository.findConditionByAccommodationId(1L);
        AccommodationCondition condition = accommodationCondition.orElseGet(null);
        softly.assertThat(condition.getGuests()).isEqualTo(3);
        softly.assertThat(condition.getBedroomCount()).isEqualTo("원룸");
        softly.assertThat(condition.getBedCount()).isEqualTo("1");
        softly.assertThat(condition.getBathroomCount()).isEqualTo("1");
    }

    @Test
    void getAmenities() {
        List<String> amenities = accommodationRepository.findAmenitiesByAccommodationId(1L);
        softly.assertThat(amenities).contains("주방", "무선 인터넷", "에어컨", "헤어드라이기");
    }

    @Test
    void getPhotos() {
        List<String> photos = accommodationRepository.findPhotosByAccommodationId(1L);
        softly.assertThat(photos).contains("https://codesquad.kr/img/place/img_5225.jpg");
    }

}