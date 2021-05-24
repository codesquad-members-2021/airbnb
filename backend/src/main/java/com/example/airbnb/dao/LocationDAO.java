package com.example.airbnb.dao;

import com.example.airbnb.dto.LocationDTO;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;
import java.util.Optional;

import static com.example.airbnb.utils.SQLKt.*;

@Repository
public class LocationDAO {
    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public LocationDAO(DataSource dataSource) {
        namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }

    public Optional<LocationDTO> getLocationByLocationId(Long locationId) {
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("location_id", locationId);

        List<LocationDTO> locationDTO = namedParameterJdbcTemplate.query(SELECT_LOCATION_BY_ID, sqlParameterSource, (rs, rowNum) -> {
            return new LocationDTO(
                    rs.getDouble("latitude"),
                    rs.getDouble("longitude")
            );
        });
        return locationDTO.stream().findFirst();
    }

}
