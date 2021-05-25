package com.codesquad.airbnb.dao;

import com.codesquad.airbnb.domain.Reservation;
import com.codesquad.airbnb.dto.ReservationDetailDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class ReservationDAO {

    private JdbcTemplate jdbcTemplate;
    private SimpleJdbcInsert simpleJdbcInsert;

    @Autowired
    public ReservationDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
        this.simpleJdbcInsert = new SimpleJdbcInsert(dataSource).withTableName("reservation");
    }

    private static class ReservationMapper implements RowMapper<Reservation> {
        public Reservation mapRow(ResultSet resultSet, int rowNumber) throws SQLException {
            return new Reservation(resultSet.getLong("id"),
                    resultSet.getDate("check_in_date").toLocalDate(),
                    resultSet.getDate("check_out_date").toLocalDate(),
                    resultSet.getInt("total_price"),
                    resultSet.getInt("guest_count"),
                    resultSet.getLong("user_id"),
                    resultSet.getLong("property_id"));
        }
    }

    public int insertReservation(Reservation reservation) {
        Map<String, Object> parameters = new HashMap<>();
        parameters.put("check_in_date", reservation.getCheckIn());
        parameters.put("check_out_date", reservation.getCheckOut());
        parameters.put("total_price", reservation.getTotalPrice());
        parameters.put("guest_count", reservation.getGuestCount());
        parameters.put("user_id", reservation.getUserId());
        parameters.put("property_id", reservation.getPropertyId());

        return simpleJdbcInsert.execute(parameters);
    }

    public Reservation findReservationById(Long id) {
        String sql = "SELECT id, check_in_date, check_out_date, total_price, guest_count, user_id, property_id " +
                "FROM reservation WHERE id = ?";

        return jdbcTemplate.queryForObject(sql, new ReservationMapper(), id);
    }

    public List<Reservation> findAllReservationsByUserId(Long userId) {
        String sql = "SELECT id, check_in_date, check_out_date, total_price, guest_count " +
                "FROM reservation WHERE user_id = ?";

        return jdbcTemplate.query(sql, new ReservationMapper(), userId);
    }

    public List<Reservation> findAllReservationsByPropertyId(Long propertyId) {
        String sql = "SELECT id, check_in_date, check_out_date, total_price, guest_count " +
                "FROM reservation WHERE property_id = ?";

        return jdbcTemplate.query(sql, new ReservationMapper(), propertyId);
    }

    public ReservationDetailDTO findDetailedReservation(Long id) {
        String sql = "SELECT r.id, p.title, l.name, r.check_in_date, r.check_out_date, h.name as host_name, r.total_price, r.guest_count " +
                "FROM reservation as r " +
                "LEFT JOIN property as p " +
                "on r.property_id = p.id " +
                "LEFT JOIN location as l " +
                "on l.id = p.location_id " +
                "LEFT JOIN host as h " +
                "on h.property_id = p.id " +
                "where r.id = ?";

        return jdbcTemplate.queryForObject(sql, ((rs, rowNum) -> {
            ReservationDetailDTO reservationDetailDTO = new ReservationDetailDTO();
            reservationDetailDTO.setId(rs.getLong("id"));
            reservationDetailDTO.setLocation(rs.getString("name"));
            reservationDetailDTO.setPropertyTitle(rs.getString("title"));
            reservationDetailDTO.setCheckIn(rs.getDate("check_in_date").toLocalDate());
            reservationDetailDTO.setCheckOut(rs.getDate("check_out_date").toLocalDate());
            reservationDetailDTO.setHostName(rs.getString("host_name"));
            reservationDetailDTO.setTotalPrice(rs.getInt("total_price"));
            reservationDetailDTO.setGuestCount(rs.getInt("guest_count"));
            return reservationDetailDTO;
        }), id);
    }
}
