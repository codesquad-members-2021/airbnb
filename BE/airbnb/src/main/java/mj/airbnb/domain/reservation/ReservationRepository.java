package mj.airbnb.domain.reservation;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class ReservationRepository {

    private static final RowMapper<Reservation> RESERVATION_ROW_MAPPER = (rs, rowNum) -> {
        Reservation reservation = new Reservation();
        reservation.setCheckInDate(rs.getDate("check_in_date").toLocalDate());
        reservation.setCheckOutDate(rs.getDate("check_out_date").toLocalDate());
        reservation.setAccommodationName(rs.getString("name"));
        reservation.setAccommodationAddress(rs.getString("address"));
        reservation.setAccommodationDescription(rs.getString("description"));

        return reservation;
    };


    private final JdbcTemplate jdbcTemplate;

    public ReservationRepository(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Reservation> findAllByUserId(Long userId) {
        String sqlQuery = "SELECT acc.name, acc.address, acc_detail.description, check_in_date, check_out_date " +
                "FROM reservation res " +
                "INNER JOIN accommodation acc " +
                "ON res.accommodation_id = acc.id " +
                "INNER JOIN accommodation_detail acc_detail " +
                "ON acc.id = acc_detail.accommodation_id " +
                "WHERE user_id = ? ";
        return jdbcTemplate.query(sqlQuery, RESERVATION_ROW_MAPPER, userId);
    }
}
