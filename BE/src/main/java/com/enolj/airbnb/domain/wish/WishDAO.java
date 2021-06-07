package com.enolj.airbnb.domain.wish;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;
import java.util.Optional;

@Repository
public class WishDAO {

    private JdbcTemplate jdbcTemplate;

    public WishDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public void save(Wish wish) {
        String sql = "INSERT INTO wish(user_id, house_id) VALUES(?, ?)";
        jdbcTemplate.update(sql, wish.getUserId(), wish.getHouseId());
    }

    public List<Wish> findAllByUserId(Long userId) {
        String sql = "SELECT * FROM wish WHERE user_id = ?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Wish.class), userId);
    }

    public Optional<Wish> findByUserIdAndHouseId(Long userId, Long houseId) {
        String sql = "SELECT * FROM wish WHERE user_id = ? AND house_id = ?";
        Wish wish = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Wish.class), userId, houseId);
        return Optional.ofNullable(wish);
    }

    public void delete(Wish wish) {
        String sql = "DELETE FROM wish WHERE user_id = ? AND house_id = ?";
        jdbcTemplate.update(sql, wish.getUserId(), wish.getHouseId());
    }
}
