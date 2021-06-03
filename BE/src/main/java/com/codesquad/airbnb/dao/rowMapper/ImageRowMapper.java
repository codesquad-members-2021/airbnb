package com.codesquad.airbnb.dao.rowMapper;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ImageRowMapper implements RowMapper<String> {
    // interface method
    @Override
    public String mapRow(ResultSet rs, int rowNum) throws SQLException {
        return rs.getString("image_url");
    }
}
