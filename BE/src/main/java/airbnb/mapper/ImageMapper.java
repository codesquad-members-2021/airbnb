package airbnb.mapper;

import airbnb.domain.Image;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ImageMapper implements RowMapper<Image> {

    @Override
    public Image mapRow(ResultSet rs, int rowNum) throws SQLException {
        return new Image.Builder(rs.getLong("id"),rs.getString("image_type"))
                .cityId(rs.getLong("city_id"))
                .roomId(rs.getLong("room_id"))
                .categoryId(rs.getLong("category_id"))
                .build();
    }
}
