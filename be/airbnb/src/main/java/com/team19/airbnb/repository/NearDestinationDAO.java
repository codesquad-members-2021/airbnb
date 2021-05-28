package com.team19.airbnb.repository;

import com.team19.airbnb.domain.main.NearDestination;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Repository
public class NearDestinationDAO {

    private final JdbcTemplate jdbcTemplate;

    public NearDestinationDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<NearDestination> findAll() {
        String selectAll = "SELECT `id`, `destination`, `time_distance`, `image` FROM `near_destination`";
        return jdbcTemplate.query(selectAll, nearDestinationRowMapper());
    }

    private RowMapper<NearDestination> nearDestinationRowMapper() {
        return (rs, rowNum) -> {
            return NearDestination.create(rs.getLong("id"),
                    rs.getString("destination"),
                    rs.getObject("time_distance", LocalTime.class),
                    rs.getString("image"));
        };
    }
}
