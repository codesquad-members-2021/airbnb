package com.enolj.airbnb.domain.image;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class ImageDAO {

    private final JdbcTemplate jdbcTemplate;

    public ImageDAO(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Image> findAll(Long houseId) {
        String sql = "SELECT * FROM image WHERE house_id = ?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Image.class), houseId);
    }
}
