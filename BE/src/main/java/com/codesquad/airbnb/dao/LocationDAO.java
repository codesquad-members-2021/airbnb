package com.codesquad.airbnb.dao;

import com.codesquad.airbnb.dao.rowMapper.LocationRowMapper;
import com.codesquad.airbnb.domain.Location;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class LocationDAO {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public LocationDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public Location findById(Long id) {
        String sql = "Select id, name, image_url FROM location WHERE id = ?";

        return jdbcTemplate.queryForObject(sql, LocationRowMapper.getInstance(), id);
    }

    public List<Location> findAll() {
        String sql = "SELECT id, name, image_url FROM location";
        return jdbcTemplate.query(sql, LocationRowMapper.getInstance());
    }
}
