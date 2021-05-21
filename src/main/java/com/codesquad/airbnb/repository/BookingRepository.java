package com.codesquad.airbnb.repository;

import com.codesquad.airbnb.domain.Booking;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class BookingRepository implements JdbcRepository<Booking> {

    private JdbcTemplate jdbcTemplate;

    public BookingRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Optional<Booking> findById(Long bookingId) {
        String sql = "select `id`, `room_id`,`user_id`, `check_in`, `check_out`, `adult`, `child`, `baby`, `total` from booking where id = ?";
        List<Booking> result = jdbcTemplate.query(sql, bookingRowMapper(), bookingId);
        return result.stream().findAny();
    }

    @Override
    public List<Booking> findAll() {
        String sql = "select `id`, `room_id`, `user_id`, `check_in`, `check_out`, `adult`, `child`, `baby`, `total` from booking";
        return jdbcTemplate.query(sql, bookingRowMapper());
    }

    private RowMapper<Booking> bookingRowMapper() {
        return (resultSet, rowNum) -> {
            Booking booking = new Booking(resultSet.getLong("id"), resultSet.getDate("check_in"),
                    resultSet.getDate("check_out"), resultSet.getInt("adult"), resultSet.getInt("child"),
                    resultSet.getInt("baby"), resultSet.getInt("total"));
            return booking;
        };
    }
}
