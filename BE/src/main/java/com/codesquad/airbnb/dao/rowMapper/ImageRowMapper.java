package com.codesquad.airbnb.dao.rowMapper;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ImageRowMapper implements RowMapper<String> {

    private static ImageRowMapper imageRowMapper = new ImageRowMapper();

    public static ImageRowMapper getInstance() {
        return imageRowMapper;
    }

    private ImageRowMapper() {}

    @Override
    public String mapRow(ResultSet rs, int rowNum) throws SQLException {
        return rs.getString("image_url");
    }
}
