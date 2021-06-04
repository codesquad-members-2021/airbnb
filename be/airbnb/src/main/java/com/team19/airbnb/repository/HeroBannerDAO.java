package com.team19.airbnb.repository;

import com.team19.airbnb.domain.main.HeroBanner;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class HeroBannerDAO{

    private final JdbcTemplate jdbcTemplate;

    public HeroBannerDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<HeroBanner> findAll() {
        String selectAll = "SELECT `id`, `title`, `image` FROM `hero_banner`";
        return jdbcTemplate.query(selectAll, heroBannerRowMapper());
    }

    private RowMapper<HeroBanner> heroBannerRowMapper() {
        return (rs, rowNum) -> {
            return HeroBanner.create(rs.getLong("id"),
                    rs.getString("title"),
                    rs.getString("image"));
        };
    }
}
