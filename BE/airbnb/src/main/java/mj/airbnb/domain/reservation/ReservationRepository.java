package mj.airbnb.domain.reservation;

import mj.airbnb.web.dto.CreatingReservationRequestDto;
import org.springframework.jdbc.core.JdbcTemplate;
import static mj.airbnb.util.RowMapper.*;
import static mj.airbnb.util.SqlQuery.*;

import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
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
        return jdbcTemplate.query(RESERVATIONS_BY_USER_ID_SQL, RESERVATION_ROW_MAPPER, userId);
    }

    public Long saveReservation(CreatingReservationRequestDto requestDto) {

        SimpleJdbcInsert simpleJdbcInsert = new SimpleJdbcInsert(jdbcTemplate)
                .withTableName("reservation")
                .usingGeneratedKeyColumns("id");

        return simpleJdbcInsert.executeAndReturnKey(requestDto.toMap()).longValue();
    }

    public Reservation findById(Long id) {
        return jdbcTemplate.queryForObject(RESERVATION_IDS_BY_ID_SQL, RESERVATION_IDS_ROW_MAPPER, id);
    }

    public void softDeleteReservation(Long reservationId) {
        jdbcTemplate.update(RESERVATION_SOFT_DELETION_SQL, reservationId);
    }
}
