package mj.airbnb.domain.wish;

import mj.airbnb.domain.reservation.Reservation;
import mj.airbnb.web.dto.CreatingReservationRequestDto;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

import static mj.airbnb.util.RowMapper.*;
import static mj.airbnb.util.SqlQuery.*;

@Repository
public class WishRepository {

    private final JdbcTemplate jdbcTemplate;

    public WishRepository(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Wish> findAllByUserId(Long userId) {
        return jdbcTemplate.query(WISHES_BY_USER_ID_SQL, WISH_ROW_MAPPER, userId);
    }

//    public Long saveWish(CreatingWishRequestDto requestDto) {
//        SimpleJdbcInsert simpleJdbcInsert = new SimpleJdbcInsert(jdbcTemplate)
//                .withTableName("reservation")
//                .usingGeneratedKeyColumns("id");
//        return simpleJdbcInsert.executeAndReturnKey(requestDto.toMap()).longValue();
//    }
//
//    public Wish findById(Long id) {
//        return jdbcTemplate.queryForObject(RESERVATION_IDS_BY_ID_SQL, RESERVATION_IDS_ROW_MAPPER, id);
//    }
//
//    public void hardDeleteWish(Long reservationId) {
//        jdbcTemplate.update(RESERVATION_SOFT_DELETION_SQL, reservationId);
//    }
}
