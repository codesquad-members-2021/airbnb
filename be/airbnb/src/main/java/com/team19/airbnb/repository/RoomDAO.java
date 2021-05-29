package com.team19.airbnb.repository;

import com.team19.airbnb.domain.room.*;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

@Repository
public class RoomDAO {

    private final JdbcTemplate jdbcTemplate;
    private final ImageDao imageDao;

    public RoomDAO(JdbcTemplate jdbcTemplate, ImageDao imageDao) {
        this.jdbcTemplate = jdbcTemplate;
        this.imageDao = imageDao;
    }

    public Optional<Room> findById(Long id) {
        String selectById = "SELECT `id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day` FROM `room` WHERE `id` = ?";
        List<Room> result = jdbcTemplate.query(selectById, roomRowMapper(), id);
        return result.stream().findAny();
    }

    private RowMapper<Room> roomRowMapper() {
        return (rs, rowNum) -> {
            List<Image> images = imageDao.findAllByRoom(rs.getLong("id"));
            return Room.create(rs.getLong("id"),
                    rs.getString("name"),
                    images,
                    Review.create(rs.getDouble("grade"), rs.getInt("reviewer")),
                    Location.create(rs.getString("address"), rs.getDouble("latitude"), rs.getDouble("longitude")),
                    RoomType.valueOf(rs.getString("room_type")),
                    RoomsAndBeds.create(rs.getInt("bed"), rs.getInt("bed_room"), rs.getInt("bath_room")),
                    rs.getString("description"),
                    Host.create(rs.getString("host_name"), rs.getString("host_image")),
                    rs.getObject("price_per_day", BigDecimal.class));
        };
    }
}
