package com.example.airbnb.dao;

import com.example.airbnb.dto.LocationDTO;
import org.springframework.dao.support.DataAccessUtils;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class LocationDAO {
    private final JdbcTemplate jdbcTemplate;
    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public LocationDAO(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
        namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }

    public Optional<LocationDTO> getLocationByLocationId(Long locationId) {
        String sql = "SELECT l.latitude, l.longitude FROM location l WHERE l.id = :location_id";
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("location_id", locationId);

        List<LocationDTO> locationDTO = namedParameterJdbcTemplate.query(sql, sqlParameterSource, (rs, rowNum) -> {
            return new LocationDTO(
                    rs.getDouble("latitude"),
                    rs.getDouble("longitude")
            );
        });
        return Optional.ofNullable(DataAccessUtils.singleResult(locationDTO));
    }

}
