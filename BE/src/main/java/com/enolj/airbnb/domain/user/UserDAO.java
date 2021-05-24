package com.enolj.airbnb.domain.user;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.util.List;
import java.util.Optional;

@Repository
public class UserDAO {

    private final JdbcTemplate jdbcTemplate;

    public UserDAO(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public Optional<User> findById(Long id) {
        String sql = "SELECT * FROM user WHERE id = ?";
        List<User> result = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class), id);
        return result.stream().findAny();
    }

    public Optional<User> findByUserId(String userId) {
        String sql = "SELECT * FROM user WHERE user_id = ?";
        List<User> result = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class), userId);
        return result.stream().findAny();
    }

    public List<User> findAll() {
        String sql = "SELECT * FROM user";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class));
    }

    public void save(User user) {
        String sql = "INSERT INTO user (user_id, email, `name`, token) VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql, user.getUserId(), user.getEmail(), user.getName(), user.getToken());
    }

    public void update(User user) {
        String sql = "UPDATE user SET user_id = ?, email = ?, `name` = ?, token = ? WHERE id = ?";
        jdbcTemplate.update(sql, user.getUserId(), user.getEmail(), user.getName(), user.getToken(), user.getId());
    }
}
