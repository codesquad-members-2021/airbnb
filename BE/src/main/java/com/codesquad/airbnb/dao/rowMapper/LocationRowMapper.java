package com.codesquad.airbnb.dao.rowMapper;

import com.codesquad.airbnb.domain.Location;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class LocationRowMapper implements RowMapper<Location> {

    private static LocationRowMapper locationMapper = new LocationRowMapper();

    private LocationRowMapper() {}

    public static LocationRowMapper getInstance() {
        return LocationRowMapper.locationMapper;
    }

    @Override
    public Location mapRow(ResultSet rs, int rowNum) throws SQLException {
        return new Location(rs.getLong("id"), rs.getString("name"), rs.getString("image_url"));
    }
}
