package mj.airbnb.domain.reservation;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;

@Repository
public class ReservationRepository {

    private static final RowMapper<Reservation> RESERVATION_ROW_MAPPER = (rs, rowNum) -> {
        Reservation reservation = new Reservation();
        reservation.setAccommodationId(rs.getLong("accommodation_id"));
        reservation.setCheckInDate(rs.getDate("check_in_date").toLocalDate());
        reservation.setCheckOutDate(rs.getDate("check_out_date").toLocalDate());

        return reservation;
    };


    private final JdbcTemplate jdbcTemplate;

    public ReservationRepository(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public Reservation findById(Long id) {
        String sqlQuery = "check_in_date, check_out_date, accommodation_id " +
                "FROM reservation " +
                "WHERE id = ?";
        return jdbcTemplate.queryForObject(sqlQuery, RESERVATION_ROW_MAPPER, id);
    }
}
