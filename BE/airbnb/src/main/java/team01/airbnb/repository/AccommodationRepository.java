package team01.airbnb.repository;

import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;
import team01.airbnb.domain.accommodation.Accommodation;
import team01.airbnb.domain.accommodation.AccommodationAddress;
import team01.airbnb.domain.accommodation.AccommodationCondition;

import java.util.List;
import java.util.Optional;

@Repository
public class AccommodationRepository {

    private final NamedParameterJdbcTemplate jdbcTemplate;

    public AccommodationRepository(NamedParameterJdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<Accommodation> findAllAccommodations() {
        String query = "SELECT * FROM accommodation";
        List<Accommodation> accommodations = jdbcTemplate.query(
                query,
                (rs, rowNum) -> Accommodation.builder()
                        .id(rs.getLong("id"))
                        .hostId(rs.getLong("host_id"))
                        .name(rs.getString("name"))
                        .description(rs.getString("description"))
                        .chargePerNight(rs.getInt("charge_per_night"))
                        .cleaningCharge(rs.getInt("cleaning_charge"))
                        .checkIn(rs.getTime("check_in"))
                        .checkOut(rs.getTime("check_out"))
                        .build()
        );
        return accommodations;
    }

    public Optional<AccommodationAddress> findAddressByAccommodationId(Long accommodationId) {
        String query = "SELECT * FROM accommodation_address WHERE accommodation_id = :accommodation_id";
        SqlParameterSource namedParameters = new MapSqlParameterSource("accommodation_id", accommodationId);
        List<AccommodationAddress> accommodationAddresses = jdbcTemplate.query(
                query
                , namedParameters
                , (rs, rowNum) -> AccommodationAddress.builder()
                        .accommodationId(rs.getLong("accommodation_id"))
                        .countryId(rs.getLong("country_id"))
                        .cityId(rs.getLong("city_id"))
                        .address(rs.getString("address"))
                        .latitude(rs.getString("latitude"))
                        .longitude(rs.getString("longitude"))
                        .build()
        );
        return Optional.of(accommodationAddresses.get(0));
    }

    public Optional<AccommodationCondition> findConditionByAccommodationId(Long accommodationId) {
        String query = "SELECT * FROM accommodation_condition WHERE accommodation_id = :accommodation_id";
        SqlParameterSource namedParameters = new MapSqlParameterSource("accommodation_id", accommodationId);
        List<AccommodationCondition> accommodationConditions = jdbcTemplate.query(
                query
                , namedParameters
                , (rs, rowNum) -> AccommodationCondition.builder()
                        .accommodationId(rs.getLong("accommodation_id"))
                        .guests(rs.getInt("guests"))
                        .bedroomCount(rs.getString("bedroom_count"))
                        .bedCount(rs.getString("bed_count"))
                        .bathroomCount(rs.getString("bathroom_count"))
                        .build()
        );
        return Optional.of(accommodationConditions.get(0));
    }
}
