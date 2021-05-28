package com.codesquad.airbnb.dao.rowMapper;

import com.codesquad.airbnb.domain.Property;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PropertyRowMapper implements RowMapper<Property> {
    // interface method
    public Property mapRow(ResultSet rs, int rowNum) throws SQLException {
        Property property = new Property(rs.getLong("id"), rs.getString("name"), rs.getInt("price"));
        return property;
    }
}