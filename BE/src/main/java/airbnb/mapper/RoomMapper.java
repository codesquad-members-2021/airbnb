package airbnb.mapper;

import airbnb.domain.*;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RoomMapper implements RowMapper<Room> {
    @Override
    public Room mapRow(ResultSet rs, int rowNum) throws SQLException {
        return new Room.Builder(rs.getLong("id")).price(rs.getInt("price"))
                .title(rs.getString("title")).description(rs.getString("description"))
                .roomDetail(createRoomDetail(rs)).tax(createTax(rs)).build();
    }

    private RoomDetail createRoomDetail(ResultSet rs) throws SQLException {
        return new RoomDetail.Builder().oneRoom(rs.getBoolean("oneRoom")).bedCount(rs.getInt("bed")).bathCount(rs.getInt("bath"))
                .hairDryer(rs.getBoolean("hair_dryer")).airConditioner(rs.getBoolean("air_conditioner"))
                .wiFi(rs.getBoolean("wifi")).build();
    }

    private Tax createTax(ResultSet rs) throws SQLException {
        return new Tax(rs.getInt("clean_tax"), rs.getInt("service_tax"), rs.getInt("accommodation_tax"));
    }
}
