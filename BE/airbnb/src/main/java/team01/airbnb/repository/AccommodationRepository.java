package team01.airbnb.repository;

import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
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
import team01.airbnb.dto.Charge;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.*;
import java.util.stream.Collectors;

@Repository
public class AccommodationRepository {

    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;
    private final JdbcTemplate jdbcTemplate;

    public AccommodationRepository(NamedParameterJdbcTemplate namedParameterJdbcTemplate
            , JdbcTemplate jdbcTemplate) {
        this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
        this.jdbcTemplate = jdbcTemplate;
    }

    public Long saveAccommodation(Accommodation accommodation) {
        String query = "INSERT INTO accommodation " +
                "(host_id, `name`, description, charge_per_night, cleaning_charge, check_in, check_out) " +
                "VALUE (?, ?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(query
                , accommodation.getHostId()
                , accommodation.getName()
                , accommodation.getDescription()
                , accommodation.getChargePerNight().getCharge()
                , accommodation.getCleaningCharge().getCharge()
                , accommodation.getCheckIn()
                , accommodation.getCheckOut()
        );
        String returnIdQuery = "SELECT LAST_INSERT_ID()";
        Long returnedId = jdbcTemplate.queryForObject(returnIdQuery, Long.class);
        return returnedId;
    }

    public boolean saveAccommodationAddress(AccommodationAddress address) {
        String query = "INSERT INTO accommodation_address (accommodation_id, country_id, city_id, address) VALUE (?, ?, ?, ?)";
        int result = jdbcTemplate.update(
                query
                , address.getAccommodationId()
                , address.getCountryId()
                , address.getCityId()
                , address.getAddress()
        );
        return result == 1;
    }

    public boolean saveAccommodationCondition(AccommodationCondition condition) {
        String query = "INSERT INTO accommodation_condition (accommodation_id, guests, bedroom_count, bed_count, bathroom_count) VALUE (?, ? ,? ,? ,?)";
        int result = jdbcTemplate.update(
                query
                , condition.getAccommodationId()
                , condition.getGuests()
                , condition.getBedroomCount()
                , condition.getBedCount()
                , condition.getBathroomCount()
        );
        return result == 1;
    }

    public boolean saveAccommodationPhoto(AccommodationPhoto photo) {
        String query = "INSERT INTO accommodation_photo (accommodation_id, `name`) VALUE (?, ?)";
        int result = jdbcTemplate.update(
                query
                , photo.getAccommodationId()
                , photo.getName()
        );
        return result == 1;
    }

    public List<Long> findAmenityIdsByNames(List<String> amenityNames) {
        String query = "SELECT * FROM amenity WHERE `name` IN (:names)";
        SqlParameterSource namedParameters = new MapSqlParameterSource("names", amenityNames);
        List<Long> ids = namedParameterJdbcTemplate.query(
                query
                , namedParameters
                , (rs, rowNum) -> rs.getLong("id")
        );
        return ids;
    }

    public int[] addAmenitiesToAccommodation(List<Long> amenityIds, Long accommodationId) {
        String query = "INSERT INTO accommodation_has_amenity (accommodation_id, amenity_id) VALUE (?, ?)";
        return jdbcTemplate.batchUpdate(query
                , new BatchPreparedStatementSetter() {
                    @Override
                    public void setValues(PreparedStatement ps, int i) throws SQLException {
                        if (i >= amenityIds.size()) return;
                        ps.setLong(1, accommodationId);
                        ps.setLong(2, amenityIds.get(i));
                    }

                    @Override
                    public int getBatchSize() {
                        return amenityIds.size();
                    }
                });
    }

    public List<Accommodation> findAllAccommodations() {
        String query = "SELECT * FROM accommodation";
        List<Accommodation> accommodations = namedParameterJdbcTemplate.query(
                query,
                (rs, rowNum) -> Accommodation.builder()
                        .id(rs.getLong("id"))
                        .hostId(rs.getLong("host_id"))
                        .name(rs.getString("name"))
                        .description(rs.getString("description"))
                        .chargePerNight(Charge.wons(rs.getInt("charge_per_night")))
                        .cleaningCharge(Charge.wons(rs.getInt("cleaning_charge")))
                        .checkIn(rs.getTime("check_in").toLocalTime())
                        .checkOut(rs.getTime("check_out").toLocalTime())
                        .build()
        );
        return accommodations;
    }

    public Optional<AccommodationAddress> findAddressByAccommodationId(Long accommodationId) {
        String query = "SELECT * FROM accommodation_address WHERE accommodation_id = :accommodation_id";
        SqlParameterSource namedParameters = new MapSqlParameterSource("accommodation_id", accommodationId);
        List<AccommodationAddress> accommodationAddresses = namedParameterJdbcTemplate.query(
                query
                , namedParameters
                , (rs, rowNum) -> AccommodationAddress.builder()
                        .accommodationId(rs.getLong("accommodation_id"))
                        .countryId(rs.getLong("country_id"))
                        .cityId(rs.getLong("city_id"))
                        .address(rs.getString("address"))
                        .latitude(rs.getDouble("latitude"))
                        .longitude(rs.getDouble("longitude"))
                        .build()
        );
        return Optional.of(accommodationAddresses.get(0));
    }

    public Optional<AccommodationCondition> findConditionByAccommodationId(Long accommodationId) {
        String query = "SELECT * FROM accommodation_condition WHERE accommodation_id = :accommodation_id";
        SqlParameterSource namedParameters = new MapSqlParameterSource("accommodation_id", accommodationId);
        List<AccommodationCondition> accommodationConditions = namedParameterJdbcTemplate.query(
                query
                , namedParameters
                , (rs, rowNum) -> AccommodationCondition.builder()
                        .accommodationId(rs.getLong("accommodation_id"))
                        .guests(rs.getInt("guests"))
                        .bedroomCount(rs.getInt("bedroom_count"))
                        .bedCount(rs.getInt("bed_count"))
                        .bathroomCount(rs.getInt("bathroom_count"))
                        .build()
        );
        return Optional.of(accommodationConditions.get(0));
    }

    public List<String> findAmenitiesByAccommodationId(Long accommodationId) {
        String query = "SELECT * FROM amenity " +
                "WHERE id in(" +
                "   SELECT amenity_id FROM airbnb.accommodation_has_amenity " +
                "   WHERE accommodation_id = :accommodation_id" +
                ")";
        SqlParameterSource namedParameters = new MapSqlParameterSource("accommodation_id", accommodationId);
        List<Amenity> amenities = namedParameterJdbcTemplate.query(
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
        List<AccommodationPhoto> photos = namedParameterJdbcTemplate.query(
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
        List<Reservation> reservations = namedParameterJdbcTemplate.query(
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
