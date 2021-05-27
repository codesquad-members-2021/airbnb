package com.codesquad.airbnb.web.service.mapper;

import com.codesquad.airbnb.web.domain.user.User;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.sql.SQLException;

@Service
public class BooleanMapper implements RowMapper<Boolean> {
    @Override
    public Boolean mapRow(ResultSet rs, int rowNum) throws SQLException {
        return rs.getBoolean(1);
    }
}
