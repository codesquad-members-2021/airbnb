package com.example.airbnb.dao;

import com.example.airbnb.domain.Location;
import com.example.airbnb.dto.LocationDTO;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Repository
public class LocationDAO {
    private final JdbcTemplate jdbcTemplate;
    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public LocationDAO(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
        namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }

    public LocationDTO getLocation(Long id) {
        String sql = "SELECT l.latitude, l.longitude FROM location l WHERE l.id = " +id;
        List<LocationDTO> locations = new ArrayList<>();
        jdbcTemplate.query(sql, (rs, rowNum) -> {
            locations.add(new LocationDTO(
                    rs.getDouble("latitude"),
                    rs.getDouble("longitude")
            ));
            return null;
        });
        return locations.get(0);
    }
}
