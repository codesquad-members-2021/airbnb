package com.codesquad.airbnb.web.service.mapper;

import com.codesquad.airbnb.web.domain.room.BathroomType;
import com.codesquad.airbnb.web.domain.room.BedroomType;
import com.codesquad.airbnb.web.domain.room.PricePolicy;
import com.codesquad.airbnb.web.domain.room.Room;
import org.springframework.data.geo.Point;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.sql.SQLException;

@Service
public class RoomMapper implements RowMapper<Room> {
    @Override
    public Room mapRow(ResultSet rs, int rowNum) throws SQLException {
        return Room.builder()
                .id(rs.getInt(1))
                .locationId(rs.getInt(2))
                .name(rs.getString(3))
                .rating(rs.getFloat(4))
                .guestCapacity(rs.getInt(5))
                .point(new Point(rs.getDouble(6), rs.getDouble(7)))
                .description(rs.getString(8))
                .bathroomType(BathroomType.valueOf(rs.getString(9)))
                .bedroomType(BedroomType.valueOf(rs.getString(10)))
                .bedCount(rs.getInt(11))
                .pricePolicy(PricePolicy.builder()
                        .accomodationTax(rs.getInt(12))
                        .cleanUpCost(rs.getInt(13))
                        .pricePerDay(rs.getInt(14))
                        .serviceFee(rs.getInt(15))
                        .weeklyDiscount(rs.getInt(16))
                        .build())
                .build();
    }
}
