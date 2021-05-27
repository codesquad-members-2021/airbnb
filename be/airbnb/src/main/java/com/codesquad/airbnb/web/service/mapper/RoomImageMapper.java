package com.codesquad.airbnb.web.service.mapper;

import com.codesquad.airbnb.web.domain.room.RoomImage;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.sql.SQLException;

@Service
public class RoomImageMapper implements RowMapper<RoomImage> {
    @Override
    public RoomImage mapRow(ResultSet rs, int rowNum) throws SQLException {
        return new RoomImage(rs.getString(1), rs.getInt(2));
    }
}
