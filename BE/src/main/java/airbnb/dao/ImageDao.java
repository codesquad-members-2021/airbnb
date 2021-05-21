package airbnb.dao;

import airbnb.domain.Image;
import airbnb.mapper.ImageMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ImageDao {

    private NamedParameterJdbcTemplate jdbcTemplate;
    private final ImageMapper imageMapper = new ImageMapper();

    public ImageDao(NamedParameterJdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<Image> findByCityId(Long cityId){
        String sql = "SELECT id, url, room_id, city_id, category_id, image_type FROM image " +
                "WHERE city_id = :cityId";
        MapSqlParameterSource parameter = new MapSqlParameterSource();
        parameter.addValue("cityId",cityId);
        return jdbcTemplate.query(sql,parameter,imageMapper);
    }
}
