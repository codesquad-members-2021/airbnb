package com.team19.airbnb.repository;

import com.team19.airbnb.domain.room.*;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.math.BigDecimal;
import java.util.*;
import java.util.stream.Collectors;

@Repository
public class RoomDAO {

    private final JdbcTemplate jdbcTemplate;
    private final ImageDao imageDao;
    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public RoomDAO(JdbcTemplate jdbcTemplate, ImageDao imageDao, DataSource dataSource) {
        this.jdbcTemplate = jdbcTemplate;
        this.imageDao = imageDao;
        this.namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
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


    //+- 0.006 으로 설정
    public BigDecimal[] findPriceByAddress(String address) {
        String query = "SELECT price_per_day FROM room WHERE address LIKE ?";
        String wrappedAddress = String.format("%%%s%%", address);

        List<Room> selectedPrice = jdbcTemplate.query(query, new BeanPropertyRowMapper<>(Room.class),  wrappedAddress);
        BigDecimal[] result = new BigDecimal[selectedPrice.size()];

        for(int i = 0 ; i < selectedPrice.size() ; i++) {
            result[i] = selectedPrice.get(i).getPricePerDay();
        }
        return result;
    }

    public List<Room> findPriceByAddressTest(Double latitude, Double longitude) {

        String sql = "SELECT * , (6371*acos(cos(radians(?))*cos(radians(latitude))*cos(radians(longitude) -radians(?))+sin(radians(?))*sin(radians(latitude)))) AS distance FROM room HAVING distance <= 0.5 ORDER BY distance";
        return jdbcTemplate.query(sql, roomRowMapper(), latitude, longitude, latitude);
    }
}
