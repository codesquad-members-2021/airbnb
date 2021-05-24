package team01.airbnb.repository;

import org.assertj.core.api.SoftAssertions;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.JdbcTest;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import team01.airbnb.domain.accommodation.AccommodationAddress;

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
        Optional<AccommodationAddress> accommodationAddress1 = accommodationRepository.findAddressByAccommodationId(1L);
        AccommodationAddress address1 = accommodationAddress1.orElseGet(null);
        softly.assertThat(address1.getAddress()).isEqualTo("서초구");

        Optional<AccommodationAddress> accommodationAddress2 = accommodationRepository.findAddressByAccommodationId(2L);
        AccommodationAddress address2 = accommodationAddress2.orElseGet(null);
        softly.assertThat(address2.getAddress()).isEqualTo("강남구");

        Optional<AccommodationAddress> accommodationAddress3 = accommodationRepository.findAddressByAccommodationId(3L);
        AccommodationAddress address3 = accommodationAddress3.orElseGet(null);
        softly.assertThat(address3.getAddress()).isEqualTo("중구");
    }
}