package com.team19.airbnb.repository;

import com.team19.airbnb.domain.room.Image;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class ImageDao {

    private final JdbcTemplate jdbcTemplate;

    public ImageDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Image> findAllByRoom(Long room) {
        String selectByUser = "SELECT `url` FROM `image` WHERE `room` = ?";
        return jdbcTemplate.query(selectByUser, imageRowMapper(), room);
    }

    private RowMapper<Image> imageRowMapper() {
        return (rs, rowNum) -> {
            return Image.create(rs.getString("url"));
        };
    }
}
