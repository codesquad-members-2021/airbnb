package codesquad.team17.gnb.room;

import codesquad.team17.gnb.exception.NotFoundException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

@Repository
public class JdbcRoomRepository implements RoomRepository {

    private static final String ROOM_SELECT = "SELECT room_id, room_name, maximum_number_of_people FROM room WHERE room_id=?";
    private static final RowMapper<Room> ROOM_ROWMAPPER = (rs, rowNum) -> new Room(
            rs.getLong(1),
            rs.getString(2),
            rs.getInt(3)
    );

    private final JdbcTemplate jdbcTemplate;

    public JdbcRoomRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Optional<Room> findById(Long id) {
        List<Room> rooms = jdbcTemplate.query(ROOM_SELECT, ROOM_ROWMAPPER, id);

        if (rooms.isEmpty()) {
            return Optional.empty();
        }

        return Optional.of(rooms.get(0));
    }
}
