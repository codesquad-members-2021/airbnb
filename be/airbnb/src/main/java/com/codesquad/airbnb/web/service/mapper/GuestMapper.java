package com.codesquad.airbnb.web.service.mapper;

import com.codesquad.airbnb.web.domain.user.Guest;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.sql.SQLException;

@Service
public class GuestMapper implements RowMapper<Guest> {
    @Override
    public Guest mapRow(ResultSet rs, int rowNum) throws SQLException {
        return Guest.builder()
                .id(rs.getInt(1))
                .name(rs.getString(2))
                .profileImage(rs.getString(3))
                .build();
    }
}
