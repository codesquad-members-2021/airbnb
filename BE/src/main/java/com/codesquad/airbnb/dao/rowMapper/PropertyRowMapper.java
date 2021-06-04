package com.codesquad.airbnb.dao.rowMapper;

import com.codesquad.airbnb.domain.Property;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PropertyRowMapper implements RowMapper<Property> {

    private static PropertyRowMapper propertyRowMapper = new PropertyRowMapper();

    public static PropertyRowMapper getInstance() {
        return propertyRowMapper;
    }

    private PropertyRowMapper() {}

    @Override
    public Property mapRow(ResultSet rs, int rowNum) throws SQLException {
        return new Property(rs.getLong("id"), rs.getString("name"), rs.getInt("price"));
    }
}
