package com.example.airbnb.dao;

import com.example.airbnb.domain.Room;
import com.example.airbnb.dto.RoomDTO;
import org.springframework.dao.support.DataAccessUtils;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class RoomDAO {
    private final JdbcTemplate jdbcTemplate;
    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public RoomDAO(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
        namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }

    public Optional<RoomDTO> getRoom(Long roomId) {
        String sql = "SELECT r.id, r.title, r.description, r.price_per_day, r.room_type, r.bed, r.max_guest, r.bathroom FROM room r WHERE r.id = :room_id";
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("room_id", roomId);

        List<RoomDTO> roomDTO = namedParameterJdbcTemplate.query(sql, sqlParameterSource, (rs, rowNum) -> {
            return new RoomDTO(
                    rs.getLong("id"),
                    rs.getString("title"),
                    rs.getString("description"),
                    rs.getInt("price_per_day"),
                    rs.getString("room_type"),
                    rs.getInt("bed"),
                    rs.getInt("max_guest"),
                    rs.getInt("bathroom")
            );
        });
        return Optional.ofNullable(DataAccessUtils.singleResult(roomDTO));
    }

    public List<Long> cityCondition(String cityName) {
        String sql = "SELECT l.id FROM location l WHERE l.city = :city_name";
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("city_name", cityName);

        List<Long> roomList = new ArrayList<>();
        namedParameterJdbcTemplate.query(sql, sqlParameterSource, (rs, rowNum) ->
                roomList.add(rs.getLong("id")));
        return roomList;
    }

    public List<Integer> getAllPrices(List<Long> roomList) {
        List<Integer> allPrices = new ArrayList<>();
        String sql = "SELECT r.price_per_day FROM room r WHERE r.id = :room_id";

        for (Long roomId : roomList) {
            SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                    .addValue("room_id", roomId);
            namedParameterJdbcTemplate.query(sql, sqlParameterSource, (rs, rowNum) ->
                    allPrices.add(rs.getInt("price_per_day")));
        }
        return allPrices;
    }


    public List<Long> periodCondition(LocalDate reserveCheckIn, LocalDate reserveCheckOut) {
        String sql = "SELECT r.room FROM reservation r WHERE (r.check_in BETWEEN :reserve_check_in AND :reserve_check_out) OR" +
                "(r.check_out BETWEEN :reserve_check_in AND :reserve_check_out) ";
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("reserve_check_in", reserveCheckIn)
                .addValue("reserve_check_out", reserveCheckOut);

        List<Long> roomList = new ArrayList<>();
        namedParameterJdbcTemplate.query(sql, sqlParameterSource, (rs, rowNum) ->
                roomList.add(rs.getLong("room")));
        return roomList;
    }

    public List<Long> priceCondition(int minPrice, int maxPrice) {
        String sql = "SELECT r.id FROM room r WHERE r.price_per_day >= :min_price AND r.price_per_day<= :max_price";
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("min_price", minPrice)
                .addValue("max_price", maxPrice);

        List<Long> roomList = new ArrayList<>();
        namedParameterJdbcTemplate.query(sql, sqlParameterSource, (rs, rowNum) ->
                roomList.add(rs.getLong("id")));
        return roomList;
    }

    public List<Long> headcountCondition(int guestCount) {
        String sql = "SELECT r.id FROM room r WHERE max_guest >= :guest_count";
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("guest_count", guestCount);

        List<Long> roomList = new ArrayList<>();
        namedParameterJdbcTemplate.query(sql, sqlParameterSource, (rs, rowNum) ->
                roomList.add(rs.getLong("id")));
        return roomList;
    }

}

