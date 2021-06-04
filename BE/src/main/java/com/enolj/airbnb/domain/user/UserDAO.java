package com.enolj.airbnb.domain.user;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;
import java.util.Optional;

@Repository
public class UserDAO {

    private final JdbcTemplate jdbcTemplate;

    public UserDAO(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public Optional<User> findByUserId(String userId) {
        String sql = "SELECT * FROM user WHERE user_id = ?";
        User user = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), userId);
        return Optional.ofNullable(user);
    }

    public void save(User user) {
        String sql = "INSERT INTO user (user_id, email, `name`, token) VALUES (?, ?, ?, ?) ON DUPLICATE KEY UPDATE token = ?";
        jdbcTemplate.update(sql, user.getUserId(), user.getEmail(), user.getName(), user.getToken(), user.getToken());
    }
}
