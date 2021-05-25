package com.example.airbnb.dao;

import com.example.airbnb.dto.LocationDTO;
import com.example.airbnb.dto.RoomDTO;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static com.example.airbnb.utils.SQLKt.*;

@Repository
public class RoomDAO {
    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public RoomDAO(DataSource dataSource) {
        namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }

    public Optional<RoomDTO> getRoom(Long roomId) {
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("room_id", roomId);

        List<RoomDTO> roomDTO = namedParameterJdbcTemplate.query(SELECT_ROOM_BY_ID, sqlParameterSource, (rs, rowNum) -> {
            return new RoomDTO(
                    rs.getLong("id"),
                    rs.getString("title"),
                    rs.getString("description"),
                    rs.getInt("price_per_day"),
                    rs.getString("room_type"),
                    rs.getInt("bed"),
                    rs.getInt("max_guest"),
                    rs.getInt("bathroom"),
                    new LocationDTO(
                            rs.getDouble("latitude"),
                            rs.getDouble("longitude")
                    )
            );
        });
        return roomDTO.stream().findFirst();
    }

    public List<Long> cityCondition(String cityName) {
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("city_name", cityName);

        List<Long> roomList = new ArrayList<>();
        namedParameterJdbcTemplate.query(SELECT_ROOM_ID_BY_CITY_CONDITION, sqlParameterSource, (rs, rowNum) ->
                roomList.add(rs.getLong("id")));
        return roomList;
    }

    public List<Integer> getAllPrices(List<Long> roomList) {
        List<Integer> allPrices = new ArrayList<>();

        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("room_ids", roomList);
        namedParameterJdbcTemplate.query(SELECT_PRICE_BY_ID, sqlParameterSource, (rs, rowNum) ->
                allPrices.add(rs.getInt("price_per_day")));

        return allPrices;
    }


    public List<Long> periodCondition(LocalDate reserveCheckIn, LocalDate reserveCheckOut) {
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("reserve_check_in", reserveCheckIn)
                .addValue("reserve_check_out", reserveCheckOut);

        List<Long> roomList = new ArrayList<>();
        namedParameterJdbcTemplate.query(SELECT_ROOM_ID_BY_PERIOD_CONDITION, sqlParameterSource, (rs, rowNum) ->
                roomList.add(rs.getLong("room")));
        return roomList;
    }

    public List<Long> priceCondition(int minPrice, int maxPrice) {
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("min_price", minPrice)
                .addValue("max_price", maxPrice);

        List<Long> roomList = new ArrayList<>();
        namedParameterJdbcTemplate.query(SELECT_ROOM_ID_BY_PRICE_CONDITION, sqlParameterSource, (rs, rowNum) ->
                roomList.add(rs.getLong("id")));
        return roomList;
    }

    public List<Long> headcountCondition(int guestCount) {
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("guest_count", guestCount);

        List<Long> roomList = new ArrayList<>();
        namedParameterJdbcTemplate.query(SELECT_ROOM_ID_BY_HEADCOUNT_CONDITION, sqlParameterSource, (rs, rowNum) ->
                roomList.add(rs.getLong("id")));
        return roomList;
    }

}

