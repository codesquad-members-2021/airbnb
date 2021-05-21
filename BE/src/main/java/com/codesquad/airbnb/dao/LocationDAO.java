package com.codesquad.airbnb.dao;

import com.codesquad.airbnb.domain.Location;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;

@Repository
public class LocationDAO {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public LocationDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public Location findById(Long id) {
        String sql = "Select id, name, image_url FROM location WHERE id = ?";

        RowMapper<Location> locationMapper = (rs, rowNum) -> {
            return new Location(rs.getLong("id"), rs.getString("name"), rs.getString("image_url"));
        };

        return jdbcTemplate.queryForObject(sql, locationMapper, id);
    }
}
