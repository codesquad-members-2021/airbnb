package com.airbnb.repository;

import com.airbnb.domain.User;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;

@Repository
public class UserRepository {
    private final JdbcTemplate jdbcTemplate;

    public UserRepository(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public void save(User user) {
        String sql = "INSERT INTO `user` (`login`, `name`) values (?, ?) "
                + "ON DUPLICATE KEY UPDATE `name` = ?";
        jdbcTemplate.update(sql, user.getLogin(), user.getName(), user.getName());
    }
}
