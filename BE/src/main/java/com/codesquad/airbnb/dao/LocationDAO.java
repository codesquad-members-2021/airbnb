package com.codesquad.airbnb.dao;

import com.codesquad.airbnb.domain.Location;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class LocationDAO {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public LocationDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    private static class LocationMapper implements RowMapper<Location> {
        public Location mapRow(ResultSet resultSet, int rowNumber) throws SQLException {
            Location location = new Location(resultSet.getLong("id"),
                    resultSet.getString("name"),
                    resultSet.getString("image_url"));

            return location;
        }
    }

    public Location findById(Long id) {
        String sql = "Select id, name, image_url FROM location WHERE id = ?";

        return jdbcTemplate.queryForObject(sql, new LocationMapper(), id);
    }

    public List<Location> findAll() {
        String sql = "SELECT id, name, image_url FROM location";
        return jdbcTemplate.query(sql, new LocationMapper());
    }
}
