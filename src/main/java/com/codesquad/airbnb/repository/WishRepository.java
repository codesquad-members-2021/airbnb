package com.codesquad.airbnb.repository;

import com.codesquad.airbnb.domain.Wish;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class WishRepository {

    private JdbcTemplate jdbcTemplate;

    public WishRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void insert(Long roomId, Long userId) {
        String sql = "insert into `wish` (`room_id`, `user_id`) values (?, ?)";
        jdbcTemplate.update(sql, roomId, userId);
    }

    public List<Wish> findByRoomIdAndUserId(Long roomId, Long userId) {
        String sql = "select wish.id, `room_id`, `user_id` from `wish` where `room_id` = ? and `user_id` = ?";
        return jdbcTemplate.query(sql, wishRowMapper(), roomId, userId);
    }

    public void delete(Long roomId, Long userId) {
        String sql = "delete from `wish` where `room_id` = ? and `user_id` = ?";
        jdbcTemplate.update(sql, roomId, userId);
    }

    private RowMapper<Wish> wishRowMapper() {
        return (resultSet, rowNum) -> {
            Wish wish = new Wish(resultSet.getLong("id"));
            return wish;
        };
    }
}
