package com.example.airbnb.dao;

import com.example.airbnb.domain.Image;
import com.example.airbnb.dto.ImageDTO;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Repository
public class ImageDAO {

    private final JdbcTemplate jdbcTemplate;
    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public ImageDAO(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
        namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }

    public String getThumbImage(Long roomId) {
        String sql = "SELECT i.url FROM image i WHERE i.type = 'thumb' AND i.room = :room_id";
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("room_id", roomId);

        String thumbImage = namedParameterJdbcTemplate.queryForObject(sql, sqlParameterSource, String.class);
        return thumbImage;
    }

    public List<String> getDetailImages(Long roomId) {
        String sql = "SELECT i.url FROM image i WHERE i.type = 'detail' AND i.room = :room_id";
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("room_id", roomId);

        List<String> detailImages = new ArrayList<>();
        namedParameterJdbcTemplate.query(sql, sqlParameterSource, (rs, rowNum) -> {
            detailImages.add(
                    rs.getString("url")
            );
            return null;
        });
        return detailImages;
    }

}
