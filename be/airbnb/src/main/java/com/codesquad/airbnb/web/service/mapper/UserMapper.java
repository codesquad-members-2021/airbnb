package com.codesquad.airbnb.web.service.mapper;

import com.codesquad.airbnb.web.domain.user.User;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.sql.SQLException;

@Service
public class UserMapper implements RowMapper<User> {
    @Override
    public User mapRow(ResultSet rs, int rowNum) throws SQLException {
        return User.builder()
                .id(rs.getInt(1))
                .nickname(rs.getString(2))
                .name(rs.getString(3))
                .profileImage(rs.getString(4))
                .accessToken(rs.getString(5))
                .build();
    }
}
