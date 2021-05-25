package com.example.airbnb.dao;


import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

import static com.example.airbnb.utils.SQLKt.*;

@Repository
public class ImageDAO {

    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public ImageDAO(DataSource dataSource) {
        namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }

    public String getThumbImage(Long roomId) {
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("room_id", roomId);

        String thumbImage = namedParameterJdbcTemplate.queryForObject(SELECT_THUMB_IMAGE_BY_ID, sqlParameterSource, String.class);
        return thumbImage;
    }

    public List<String> getDetailImages(Long roomId) {
        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("room_id", roomId);

        List<String> detailImages = new ArrayList<>();
        namedParameterJdbcTemplate.query(SELECT_DETAIL_IMAGES_BY_ID, sqlParameterSource, (rs, rowNum) -> {
            detailImages.add(
                    rs.getString("url")
            );
            return null;
        });
        return detailImages;
    }

}
