package com.codesquad.airbnb.dao.rowMapper;

import com.codesquad.airbnb.dto.property.PropertyDTO;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PropertyDTORowMapper implements RowMapper<PropertyDTO> {
    // interface method
    public PropertyDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
        return PropertyDTO.of(rs.getLong("id"), rs.getString("title"),
                rs.getBoolean("bookmark"), rs.getInt("price"),
                rs.getInt("review_count"), rs.getDouble("rating"),
                rs.getDouble("latitude"), rs.getDouble("longitude"));
    }
}
