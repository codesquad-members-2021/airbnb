package mj.airbnb.domain.reservation;

import org.springframework.jdbc.core.JdbcTemplate;
import static mj.airbnb.util.RowMapper.*;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class ReservationRepository {


    private final JdbcTemplate jdbcTemplate;

    public ReservationRepository(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Reservation> findAllByUserId(Long userId) {
        String sqlQuery = "SELECT acc.name, acc.address, i.url, acc_detail.description, check_in_date, check_out_date " +
                "FROM reservation res " +
                "INNER JOIN accommodation acc " +
                "ON res.accommodation_id = acc.id " +
                "INNER JOIN image i " +
                "ON acc.id = i.accommodation_id " +
                "INNER JOIN accommodation_detail acc_detail " +
                "ON acc.id = acc_detail.accommodation_id " +
                "WHERE user_id = ? " +
                "AND i.main = TRUE " +
                "ORDER BY check_in_date ";
        return jdbcTemplate.query(sqlQuery, RESERVATION_ROW_MAPPER, userId);
    }
}
