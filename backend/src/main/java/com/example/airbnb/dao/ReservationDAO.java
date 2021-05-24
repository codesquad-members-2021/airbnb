package com.example.airbnb.dao;

import com.example.airbnb.dto.ReservationDTO;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import static com.example.airbnb.utils.SQLKt.*;

@Repository
public class ReservationDAO {
    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public ReservationDAO(DataSource dataSource) {
        namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }

    public Long reservationRoom(Long roomId, LocalDate checkIn, LocalDate checkOut, int guestCount, int totalPrice) {
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("room", roomId)
                .addValue("check_in", checkIn)
                .addValue("check_out", checkOut)
                .addValue("total_price", totalPrice)
                .addValue("number_of_guest", guestCount);

        KeyHolder keyHolder = new GeneratedKeyHolder();
        namedParameterJdbcTemplate.update(INSERT_RESERVATION, sqlParameterSource, keyHolder, new String[]{"ID"});
        return keyHolder.getKey().longValue();
    }

    public Optional<ReservationDTO> getReservationByReservationId(Long reservationId) {
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("reservation_id", reservationId);

        List<ReservationDTO> reservationDTO = namedParameterJdbcTemplate.query(SELECT_RESERVATION_BY_ID, sqlParameterSource, (rs, rowNum) -> {
            return new ReservationDTO(
                    reservationId,
                    rs.getLong("room"),
                    rs.getDate("check_in").toLocalDate(),
                    rs.getDate("check_out").toLocalDate(),
                    rs.getInt("total_price"),
                    rs.getInt("number_of_guest")
            );
        });
        return reservationDTO.stream().findFirst();
    }

    public void cancelReservationById(Long reservationId) {
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("reservation_id", reservationId);
        namedParameterJdbcTemplate.update(DELETE_RESERVATION, sqlParameterSource);
    }

}
