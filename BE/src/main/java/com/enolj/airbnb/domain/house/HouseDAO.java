package com.enolj.airbnb.domain.house;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;
import java.util.Optional;

@Repository
public class HouseDAO {

    private final JdbcTemplate jdbcTemplate;

    public HouseDAO(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public Optional<House> findById(Long id) {
        String sql = "SELECT * FROM house WHERE id = ?";
        House house = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(House.class), id);
        return Optional.ofNullable(house);
    }

    public List<House> findAll() {
        String sql = "SELECT * FROM house";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(House.class));
    }
}
