package com.codesquad.airbnb.dao.rowMapper;

import com.codesquad.airbnb.domain.Reservation;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ReservationRowMapper implements RowMapper<Reservation> {

    private static ReservationRowMapper reservationMapper = new ReservationRowMapper();

    public static ReservationRowMapper getInstance() {
        return reservationMapper;
    }

    private ReservationRowMapper() {}

    @Override
    public Reservation mapRow(ResultSet rs, int rowNum) throws SQLException {
        Reservation reservation = new Reservation(rs.getDate("check_in_date").toLocalDate(),
                rs.getDate("check_out_date").toLocalDate(),
                rs.getInt("total_price"),
                rs.getInt("guest_count"),
                rs.getLong("user_id"),
                rs.getLong("property_id"));
        reservation.setId(rs.getLong("id"));
        return reservation;
    }
}
