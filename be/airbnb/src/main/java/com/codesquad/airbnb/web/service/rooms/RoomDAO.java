package com.codesquad.airbnb.web.service.rooms;

import com.codesquad.airbnb.web.domain.room.Room;
import com.codesquad.airbnb.web.domain.room.RoomRepository;
import com.codesquad.airbnb.web.service.mapper.RoomMapper;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Service;

import java.util.Objects;
import java.util.Optional;

import static com.codesquad.airbnb.web.sqls.RoomSqlKt.FIND_ROOM;
import static com.codesquad.airbnb.web.sqls.RoomSqlKt.SAVE_ROOM;

@Service
public class RoomDAO implements RoomRepository {

    private final NamedParameterJdbcTemplate jdbcTemplate;
    private final RoomMapper roomMapper;

    public RoomDAO(NamedParameterJdbcTemplate jdbcTemplate, RoomMapper roomMapper) {
        this.jdbcTemplate = jdbcTemplate;
        this.roomMapper = roomMapper;
    }

    @Override
    public Room save(Room room) {
        KeyHolder keyHolder = new GeneratedKeyHolder();
        MapSqlParameterSource parameter = new MapSqlParameterSource()
                .addValue("location_id", room.getLocationId())
                .addValue("name", room.getName())
                .addValue("rating", room.getRating())
                .addValue("guest_capacity", room.getGuestCapacity())
                .addValue("x", room.getPoint().getX())
                .addValue("y", room.getPoint().getY())
                .addValue("description", room.getDescription());
        jdbcTemplate.update(SAVE_ROOM, parameter, keyHolder);
        room.updateId(Objects.requireNonNull(keyHolder.getKey()).intValue());
        return room;
    }

    @Override
    public Optional<Room> findRoomById(int id) {
        MapSqlParameterSource parameter = new MapSqlParameterSource()
                .addValue("id", id);
        try {
            Room room = jdbcTemplate.queryForObject(FIND_ROOM, parameter, roomMapper);
            return Optional.ofNullable(room);
        } catch (EmptyResultDataAccessException e) {
            return Optional.empty();
        }
    }
}
