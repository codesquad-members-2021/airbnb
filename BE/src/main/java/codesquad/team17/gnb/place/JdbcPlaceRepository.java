package codesquad.team17.gnb.place;

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

    private static final String PLACE_FIND_ALL = "SELECT * FROM place";
    private static final String PLACE_FIND_BY_ID = "SELECT * FROM place WHERE place_id=:id";

    private static final RowMapper<Place> PLACE_ROWMAPPER = (rs, rowNum) -> new Place.Builder()
            .id(rs.getLong("place_id"))
            .name(rs.getString("place_name"))
            .location(new Location.Builder()
                    .city(rs.getString("city"))
                    .district(rs.getString("district"))
                    .address1(rs.getString("address1"))
                    .address2(rs.getString("address2"))
                    .latitude(rs.getDouble("latitude"))
                    .longitude(rs.getDouble("longitude"))
                    .build())
            .star(rs.getDouble("star"))
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
        List<Place> places = jdbcTemplate.query(PLACE_FIND_BY_ID, namedParameters, PLACE_ROWMAPPER);

        if (places.isEmpty()) {
            return Optional.empty();
        }

        return Optional.of(places.get(0));
    }

    @Override
    public List<Place> findAll() {
        return jdbcTemplate.query(PLACE_FIND_ALL, PLACE_ROWMAPPER);
    }

    @Override
    public List<Place> findAllByStayPeriod(LocalDate checkIn, LocalDate checkOut) {
        SqlParameterSource namedParameters = new MapSqlParameterSource()
                .addValue("check_in", Date.valueOf(checkIn))
                .addValue("check_out", Date.valueOf(checkOut));

        return jdbcTemplate.query(
                "SELECT * FROM place WHERE place_id NOT IN " +
                        "(SELECT place_id FROM reservation " +
                        "WHERE (check_in <= :check_in AND check_out > :check_in)" +
                        "OR (check_in < :check_out AND check_out >= :check_out)" +
                        "OR (:check_in <= check_in AND check_in < :check_out))", namedParameters, PLACE_ROWMAPPER
        );
    }


}
