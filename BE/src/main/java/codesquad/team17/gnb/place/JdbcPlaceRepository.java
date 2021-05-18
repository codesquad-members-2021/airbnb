package codesquad.team17.gnb.place;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class JdbcPlaceRepository implements PlaceRepository {

    private static final String ROOM_SELECT = "SELECT place_id, place_name, maximum_number_of_people FROM place WHERE place_id=?";
    private static final RowMapper<Place> ROOM_ROWMAPPER = (rs, rowNum) -> new Place(
            rs.getLong(1),
            rs.getString(2),
            rs.getInt(3)
    );

    private final JdbcTemplate jdbcTemplate;

    public JdbcPlaceRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Optional<Place> findById(Long id) {
        List<Place> rooms = jdbcTemplate.query(ROOM_SELECT, ROOM_ROWMAPPER, id);

        if (rooms.isEmpty()) {
            return Optional.empty();
        }

        return Optional.of(rooms.get(0));
    }
}
