package team01.airbnb.service;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import team01.airbnb.domain.User;

@Service
public class UserService {

    private final JdbcTemplate jdbcTemplate;

    public UserService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public int join(User user) {
        return jdbcTemplate.update("INSERT INTO user (`username`, `email`, `role`) VALUES(?, ?, ?)"
                , user.getUsername(), user.getEmail(), user.getRole().name());
    }
}
