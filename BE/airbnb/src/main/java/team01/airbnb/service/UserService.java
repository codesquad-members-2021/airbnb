package team01.airbnb.service;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import team01.airbnb.domain.RoleType;
import team01.airbnb.domain.User;

@Service
public class UserService {

    private final JdbcTemplate jdbcTemplate;

    public UserService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Transactional
    public User findByUsername(String username) {
        String query = "SELECT * FROM user WHERE username = ?";
        try {
            return jdbcTemplate.queryForObject(query, new Object[]{username}, (rs, rowNum) -> {
                User user = new User();
                user.setId(rs.getLong("id"));
                user.setUsername(rs.getString("username"));
                user.setEmail(rs.getString("email"));
                user.setRole(RoleType.valueOf(rs.getString("role")));
                user.setCreateDate(rs.getDate("join_date"));
                return user;
            });
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    @Transactional
    public int join(User user) {
        return jdbcTemplate.update("INSERT INTO user (`username`, `email`, `role`) VALUES(?, ?, ?)"
                , user.getUsername(), user.getEmail(), user.getRole().name());
    }
}
