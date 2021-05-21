package com.example.airbnb.dao;

import com.example.airbnb.domain.Room;
import com.example.airbnb.dto.RoomDTO;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Repository
public class RoomDAO {
    private final JdbcTemplate jdbcTemplate;
    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public RoomDAO(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
        namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }

    public RoomDTO getRoom(Long roomId) {
        String sql = "SELECT r.id, r.title, r.description, r.price_per_day, r.room_type, r.bed, r.max_guest, r.bathroom FROM room r WHERE r.id = "+roomId;
        List<RoomDTO> rooms = new ArrayList<>();
        jdbcTemplate.query(sql, (rs, rowNum) -> {
            rooms.add(new RoomDTO(
                    rs.getLong("id"),
                    rs.getString("title"),
                    rs.getString("description"),
                    rs.getInt("price_per_day"),
                    rs.getString("room_type"),
                    rs.getInt("bed"),
                    rs.getInt("max_guest"),
                    rs.getInt("bathroom")
            ));
            return null;
        });
        return rooms.get(0);
    }

    public List<Long> getAvailableDates(LocalDate reserveCheckIn, LocalDate reserveCheckOut) {
        String sql = "SELECT r.room FROM reservation r WHERE r.check_in <= :reserve_check_in AND r.check_out >= :reserve_check_out";
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("reserve_check_in", reserveCheckIn)
                .addValue("reserve_check_out",reserveCheckOut);
        List<Long> roomList = new ArrayList<>();
        namedParameterJdbcTemplate.query(sql, sqlParameterSource, (rs, rowNum) ->
                roomList.add(rs.getLong("room")));
        return roomList;
    }

    public List<Long> getRoomByCityName(String cityName) {
        String sql = "SELECT l.id FROM location l WHERE l.city = :city_name";
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("city_name", cityName);
        List<Long> roomList = new ArrayList<>();
        namedParameterJdbcTemplate.query(sql, sqlParameterSource, (rs, rowNum) ->
                roomList.add(rs.getLong("id")));
        return roomList;
    }

    public List<Long> getRoomByPriceAnd(int minPrice, int maxPrice, int guestCount) {
        String sql = "SELECT r.id FROM room r WHERE (r.price_per_day < :min_price OR r.price_per_day> :max_price) OR max_guest< :guest_count ";
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("min_price", minPrice)
                .addValue("max_price", maxPrice)
                .addValue("guest_count", guestCount);
        List<Long> roomList = new ArrayList<>();
        namedParameterJdbcTemplate.query(sql, sqlParameterSource, (rs, rowNum) ->
                roomList.add(rs.getLong("id")));
        return roomList;
    }

    public List<Long> getRoomByExceedGuest(int guestCount) {
        String sql = "SELECT r.id FROM room r WHERE max_guest< :guest_count";
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("guest_count", guestCount);
        List<Long> roomList = new ArrayList<>();
        namedParameterJdbcTemplate.query(sql, sqlParameterSource, (rs, rowNum) ->
                roomList.add(rs.getLong("id")));
        return roomList;
    }

    public List<Integer> getAllPrices(List<Long> roomList) {
        List<Integer> allPrices = new ArrayList<>();
        String sql = "SELECT r.price_per_day FROM room r WHERE r.id = :room_id";
        for (int i =0; i< roomList.size(); i++) {
            SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                    .addValue("room_id", roomList.get(i));
            namedParameterJdbcTemplate.query(sql, sqlParameterSource, (rs, rowNum) ->
                    allPrices.add(rs.getInt("price_per_day")));
        }
        return allPrices;
    }

}

