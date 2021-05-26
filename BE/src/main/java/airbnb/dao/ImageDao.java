package airbnb.dao;

import airbnb.domain.Image;
import airbnb.mapper.ImageMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ImageDao {

    private final NamedParameterJdbcTemplate jdbcTemplate;
    private final ImageMapper imageMapper = new ImageMapper();

    public ImageDao(NamedParameterJdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<Image> findByCityId(Long cityId) {
        String sql = "SELECT id, url, room_id, city_id, category_id, image_type FROM image " +
                "WHERE city_id = :cityId";
        MapSqlParameterSource parameter = new MapSqlParameterSource();
        parameter.addValue("cityId", cityId);
        return jdbcTemplate.query(sql, parameter, imageMapper);
    }

    public List<Image> findByCategoryId(Long categoryId) {
        String sql = "SELECT id, url, room_id, city_id, category_id, image_type FROM image " +
                "WHERE category_id = :categoryId";
        MapSqlParameterSource parameter = new MapSqlParameterSource();
        parameter.addValue("categoryId", categoryId);
        return jdbcTemplate.query(sql, parameter, imageMapper);
    }

    public List<Image> findByType(String imageType) {
        String sql = "SELECT id, url, room_id, city_id, category_id, image_type FROM image " +
                "WHERE image_type = :imageType";
        MapSqlParameterSource parameter = new MapSqlParameterSource();
        parameter.addValue("imageType", imageType);
        return jdbcTemplate.query(sql, parameter, imageMapper);
    }

    public List<Image> findByRoomId(Long roomId) {
        String sql = "SELECT id, url, room_id, city_id, category_id, image_type FROM image " +
                "WHERE room_id = :roomId";
        MapSqlParameterSource parameter = new MapSqlParameterSource();
        parameter.addValue("roomId", roomId);
        return jdbcTemplate.query(sql, parameter, imageMapper);
    }
}
