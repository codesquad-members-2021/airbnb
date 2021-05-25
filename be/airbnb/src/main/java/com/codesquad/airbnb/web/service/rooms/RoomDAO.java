package com.codesquad.airbnb.web.service.rooms;

import com.codesquad.airbnb.web.domain.room.PricePolicy;
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

import static com.codesquad.airbnb.web.sqls.RoomSqlKt.*;

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
                .addValue("description", room.getDescription())
                .addValue("bathroom_type", room.getBathroomType().name())
                .addValue("bedroom_type", room.getBedroomType().name())
                .addValue("bed_count", room.getBedCount())
                .addValue("amenity", room.getAmenity());
        jdbcTemplate.update(SAVE_ROOM, parameter, keyHolder);
        room.updateId(Objects.requireNonNull(keyHolder.getKey()).intValue());

        savePricePolicy(room);
        return room;
    }

    private void savePricePolicy(Room room) {
        PricePolicy pricePolicy = room.getPricePolicy();
        MapSqlParameterSource parameter = new MapSqlParameterSource()
                .addValue("room_id", room.getId())
                .addValue("service_fee", pricePolicy.getServiceFee())
                .addValue("accomodation_tax", pricePolicy.getAccomodationTax())
                .addValue("clean_up_cost", pricePolicy.getCleanUpCost())
                .addValue("price_per_day", pricePolicy.getPricePerDay())
                .addValue("weekly_discount", pricePolicy.getWeeklyDiscount());
        jdbcTemplate.update(SAVE_PRICE_POLICY, parameter);
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
