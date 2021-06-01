package mj.airbnb.domain.wish;

import org.springframework.jdbc.core.JdbcTemplate;
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
}
