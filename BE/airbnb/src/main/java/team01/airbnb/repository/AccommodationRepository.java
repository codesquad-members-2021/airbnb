package team01.airbnb.repository;

import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;
import team01.airbnb.domain.Amenity;
import team01.airbnb.domain.Reservation;
import team01.airbnb.domain.accommodation.Accommodation;
import team01.airbnb.domain.accommodation.AccommodationAddress;
import team01.airbnb.domain.accommodation.AccommodationCondition;
import team01.airbnb.domain.accommodation.AccommodationPhoto;

import java.sql.Timestamp;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

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

    public List<String> findAmenitiesByAccommodationId(Long accommodationId) {
        String query = "SELECT * FROM amenity " +
                "WHERE id in(" +
                "   SELECT amenity_id FROM airbnb.accommodation_has_amenity " +
                "   WHERE accommodation_id = :accommodationId" +
                ")";
        SqlParameterSource namedParameters = new MapSqlParameterSource("accommodation_id", accommodationId);
        List<Amenity> amenities = jdbcTemplate.query(
                query
                , namedParameters
                , (rs, rowNum) -> Amenity.builder()
                        .id(rs.getLong("id"))
                        .name(rs.getString("name"))
                        .build()
        );
        return amenities.stream()
                .map(amenity -> amenity.getName())
                .collect(Collectors.toUnmodifiableList());
    }

    public List<String> findPhotosByAccommodationId(Long accommodationId) {
        String query = "SELECT * FROM accommodation_photo " +
                "WHERE id in(" +
                "   SELECT accommodation_id FROM accommodation_photo " +
                "   WHERE accommodation_id = :accommodation_id" +
                ")";
        SqlParameterSource namedParameters = new MapSqlParameterSource("accommodation_id", accommodationId);
        List<AccommodationPhoto> photos = jdbcTemplate.query(
                query
                , namedParameters
                , (rs, rowNum) -> AccommodationPhoto.builder()
                        .id(rs.getLong("id"))
                        .accommodationId(rs.getLong("accommodation_id"))
                        .name(rs.getString("name"))
                        .build()
        );
        return photos.stream()
                .map(photo -> photo.getName())
                .collect(Collectors.toUnmodifiableList());
    }

    public Optional<Reservation> findReservationByAccommodationId(Long accommodationId) {
        String query = "SELECT * FROM reservation WHERE accommodation_id = :accommodation_id";
        SqlParameterSource namedParameters = new MapSqlParameterSource("accommodation_id", accommodationId);
        List<Reservation> reservations = jdbcTemplate.query(
                query
                , namedParameters
                , (rs, rowNum) -> Reservation.builder()
                        .id(rs.getLong("id"))
                        .accommodationId(rs.getLong("accommodation_id"))
                        .userId(rs.getLong("user_id"))
                        .checkIn(rs.getDate("check_in").toLocalDate())
                        .checkOut(rs.getDate("check_out").toLocalDate())
                        .guests(rs.getInt("guests"))
                        .charge(rs.getInt("charge"))
                        .createdTime(
                                new Timestamp(rs.getDate("created_time").getTime()).toLocalDateTime())
                        .build()
        );
        return Optional.of(reservations.get(0));
    }

}
