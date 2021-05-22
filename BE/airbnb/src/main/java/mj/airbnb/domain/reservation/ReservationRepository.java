package mj.airbnb.domain.reservation;

import mj.airbnb.domain.accommodation.Accommodation;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class ReservationRepository {

    private final JdbcTemplate jdbcTemplate;

    public ReservationRepository(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public Reservation findById(Long id) {
        String sqlQuery = "SELECT id, check_in_date, check_out_date, accommodation_id " +
                "FROM reservation " +
                "WHERE id = ?";
        return jdbcTemplate.queryForObject(sqlQuery, reservationRowMapper(), id);
    }

    public List<ReservationDate> findALLReservationDateByAccommodationId(Long accommodationId) {
        String sqlQuery = "SELECT id, reserved_date, reservation_id, reservation_accommodation_id " +
                "FROM reservation_date " +
                "WHERE reservation_accommodation_id = ?";
        return jdbcTemplate.query(sqlQuery, reservationDateRowMapper(), accommodationId);
    }

    private RowMapper<Reservation> reservationRowMapper() {
        return (rs, rowNum) -> {
            Reservation reservation = new Reservation();
            reservation.setId(rs.getLong("id"));
            reservation.setAccommodationId(rs.getLong("accommodation_id"));
            reservation.setCheckInDate(rs.getString("check_in_date"));
            reservation.setCheckOutDate(rs.getString("check_out_date"));

            return reservation;
        };
    }

    private RowMapper<ReservationDate> reservationDateRowMapper() {
        return (rs, rowNum) -> {
            ReservationDate reservationDate = new ReservationDate();
            reservationDate.setId(rs.getLong("id"));
            reservationDate.setReservedDate(rs.getString("reserved_date"));
            reservationDate.setReservationId(rs.getLong("reservation_id"));
            reservationDate.setReservationAccommodationId(rs.getLong("reservation_accommodation_id"));

            return reservationDate;
        };
    }
}
