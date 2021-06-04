package com.team19.airbnb.repository;

import com.team19.airbnb.domain.room.*;
import com.team19.airbnb.dto.SearchRequestDTO;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.math.BigDecimal;
import java.util.*;

@Repository
public class RoomDAO {

    private final JdbcTemplate jdbcTemplate;
    private final ImageDAO imageDao;
    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public RoomDAO(JdbcTemplate jdbcTemplate, ImageDAO imageDao, DataSource dataSource) {
        this.jdbcTemplate = jdbcTemplate;
        this.imageDao = imageDao;
        this.namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }

    public Optional<Room> findById(Long id) {
        String selectById = "SELECT `id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity` FROM `room` WHERE `id` = ?";
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
                    rs.getObject("price_per_day", BigDecimal.class),
                    rs.getInt("capacity"));
        };
    }

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
        String sql = "SELECT price_per_day, (6371*acos(cos(radians(?))*cos(radians(latitude))*cos(radians(longitude) -radians(?))+sin(radians(?))*sin(radians(latitude)))) AS distance FROM room HAVING distance <= 0.5 ORDER BY distance";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Room.class), latitude, longitude, latitude);
    }

    private SqlParameterSource setNamedParametersBySearchRequestDTO(SearchRequestDTO searchRequestDTO) {
        return new MapSqlParameterSource()
                .addValue("minPrice", searchRequestDTO.getMinPrice())
                .addValue("maxPrice", searchRequestDTO.getMaxPrice())
                .addValue("guest", searchRequestDTO.getGuest())
                .addValue("checkIn", searchRequestDTO.getCheckIn())
                .addValue("checkOut", searchRequestDTO.getCheckOut())
                .addValue("latitude", searchRequestDTO.getCoordinate()[0])
                .addValue("longitude", searchRequestDTO.getCoordinate()[1]);
    }

    public String makeSqlSentence(SearchRequestDTO searchRequestDTO) {
        String sql = "SELECT *, (6371*acos(cos(radians(:latitude))*cos(radians(latitude))*cos(radians(longitude) -radians(:longitude))+sin(radians(:latitude))*sin(radians(latitude)))) AS distance FROM room WHERE 1=1 ";
        if(searchRequestDTO.getMaxPrice() != null) {
            sql += "AND price_per_day <= :maxPrice ";
        }
        if(searchRequestDTO.getMinPrice() != null) {
            sql += "AND price_per_day >= :minPrice ";
        }
        if(searchRequestDTO.getGuest() != 0) {
            sql += "AND capacity >= :guest ";
        }

        if (searchRequestDTO.getCheckIn() != null || searchRequestDTO.getCheckOut() != null) {
            sql += "AND id NOT IN ( SELECT room FROM booking WHERE 1=0 ";
            if (searchRequestDTO.getCheckIn() != null) {
                sql += "OR (check_in <= :checkIn AND check_out > :checkIn) ";
            }

            if (searchRequestDTO.getCheckOut() != null) {
                sql += "OR (check_in < :checkOut AND check_out >= :checkOut) ";
            }

            if (searchRequestDTO.getCheckIn() != null && searchRequestDTO.getCheckOut() != null) {
                sql += "OR (:checkIn <= check_in AND check_in < :checkOut) ";
            }

            sql += ") ";
        }
        sql += "HAVING distance <= 0.5 ORDER BY distance";
        return sql;
    }

    public List<Room> findRoomsByCondition(SearchRequestDTO searchRequestDTO) {
        String query = makeSqlSentence(searchRequestDTO);
        SqlParameterSource namedParameter = setNamedParametersBySearchRequestDTO(searchRequestDTO);
        return namedParameterJdbcTemplate.query(query, namedParameter, roomRowMapper());
    }
}
