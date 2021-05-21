package codesquad.team17.gnb.place.domain;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Repository
public class JdbcPlaceRepository implements PlaceRepository {

    private static final RowMapper<Place> PLACE_ROWMAPPER = (rs, rowNum) -> new Place.Builder()
            .id(rs.getLong("place_id"))
            .name(rs.getString("place_name"))
            .imageUrl(rs.getString("image_url"))
            .location(new Location.Builder()
                    .city(rs.getString("city"))
                    .district(rs.getString("district"))
                    .address1(rs.getString("address1"))
                    .address2(rs.getString("address2"))
                    .latitude(rs.getDouble("latitude"))
                    .longitude(rs.getDouble("longitude"))
                    .build())
            .option(new Option(rs.getString("option"),
                    rs.getString("additional_option")))
            .likeCount(rs.getInt("like_count"))
            .hostId(rs.getLong("host_id"))
            .maximumNumberOfPeople(rs.getInt("maximum_number_of_people"))
            .description(rs.getString("description"))
            .price(rs.getInt("price"))
            .build();

    private final NamedParameterJdbcTemplate jdbcTemplate;

    public JdbcPlaceRepository(NamedParameterJdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Optional<Place> findById(Long id) {
        SqlParameterSource namedParameters = new MapSqlParameterSource("id", id);
        List<Place> places = jdbcTemplate.query(PlaceSql.FIND_BY_ID, namedParameters, PLACE_ROWMAPPER);

        if (places.isEmpty()) {
            return Optional.empty();
        }

        return Optional.of(places.get(0));
    }

    @Override
    public List<Place> findAll() {
        return jdbcTemplate.query(PlaceSql.FIND_ALL, PLACE_ROWMAPPER);
    }

    @Override
    public List<Place> findAllByStayPeriod(LocalDate checkIn, LocalDate checkOut) {
        SqlParameterSource namedParameters = new MapSqlParameterSource()
                .addValue("check_in", Date.valueOf(checkIn))
                .addValue("check_out", Date.valueOf(checkOut));

        return jdbcTemplate.query(
                PlaceSql.FIND_ALL_BY_STAY_PERIOD, namedParameters, PLACE_ROWMAPPER
        );
    }

}
