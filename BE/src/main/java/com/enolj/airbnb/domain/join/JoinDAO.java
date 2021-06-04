package com.enolj.airbnb.domain.join;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;
import java.util.Optional;

@Repository
public class JoinDAO {

    private final JdbcTemplate jdbcTemplate;

    public JoinDAO(DataSource datasource) {
        this.jdbcTemplate = new JdbcTemplate(datasource);
    }

    public void save(Join join) {
        String sql = "INSERT INTO `join`(check_in, check_out, guest, kid, total_charge, user_id, house_id) VALUES(?, ?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, join.getCheckIn(), join.getCheckOut(), join.getGuest(), join.getKid(), join.getTotalCharge(), join.getUserId(), join.getHouseId());
    }

    public List<Join> findAllByUserId(Long userId) {
        String sql = "SELECT * FROM `join` WHERE user_id = ?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Join.class), userId);
    }

    public Optional<Join> findByUserIdAndHouseId(Long userId, Long houseId) {
        String sql = "SELECT * FROM `join` WHERE user_id = ? AND house_id = ?";
        Join join = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Join.class), userId, houseId);
        return Optional.ofNullable(join);
    }

    public void delete(Join join) {
        String sql = "DELETE FROM `join` WHERE user_id = ? AND house_id = ?";
        jdbcTemplate.update(sql, join.getUserId(), join.getHouseId());
    }
}
