package com.enolj.airbnb.domain.wish;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;
import java.util.Optional;

@Repository
public class WishDAO {

    private JdbcTemplate jdbcTemplate;

    public WishDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Wish> findAllByUserId(Long userId) {
        String sql = "SELECT * FROM wish WHERE user_id = ?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Wish.class), userId);
    }
}
