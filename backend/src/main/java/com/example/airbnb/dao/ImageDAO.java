package com.example.airbnb.dao;

import com.example.airbnb.domain.Image;
import com.example.airbnb.dto.ImageDTO;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
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
        String sql = "SELECT i.url FROM image i WHERE i.type = 'thumb' AND i.room = " +roomId;
        List<String> thumbImage = new ArrayList<>();
        jdbcTemplate.query(sql, (rs, rowNum) -> {
            thumbImage.add(
                    rs.getString("url")
            );
            return null;
        });
        return thumbImage.get(0);
    }

    public List<String> getDetailImages(Long roomId) {
        String sql = "SELECT i.url FROM image i WHERE i.type = 'detail' AND i.room = " +roomId;
        List<String> detailImages = new ArrayList<>();
        jdbcTemplate.query(sql, (rs, rowNum) -> {
            detailImages.add(
                    rs.getString("url")
            );
            return null;
        });
        return detailImages;
    }

}
