package com.codesquad.airbnb.repository;

import com.codesquad.airbnb.domain.User;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class UserRepository implements JdbcRepository<User> {

    private JdbcTemplate jdbcTemplate;

    public UserRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void insert(User user) {
        String sql = "insert into `user` (`email`, `name`, `access_token`) values (?, ?, ?)";
        jdbcTemplate.update(sql, user.getEmail(), user.getName(), user.getAccessToken());
    }

    public List<User> findByEmail(String email) {
        String sql = "select `name`, `email` from `user` where `email` like ?"; // 문자일 땐 like
        return jdbcTemplate.query(sql, userRowMapper(), email);
    }

    @Override
    public Optional<User> findById(Long id) {
        return Optional.empty();
    }

    @Override
    public List<User> findAll() {
        return null;
    }

    private RowMapper<User> userRowMapper() {
        return (resultSet, rowNum) -> {
            User user = new User(resultSet.getString("email"), resultSet.getString("name"));
            return user;
        };
    }
}
