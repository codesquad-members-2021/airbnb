package com.team19.airbnb.repository;

import com.team19.airbnb.domain.Booking;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Repository
public class BookingDAO {

    private final JdbcTemplate jdbcTemplate;

    public BookingDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public Booking save(Booking booking) {
        SimpleJdbcInsert jdbcInsert = new SimpleJdbcInsert(jdbcTemplate);
        jdbcInsert.withTableName("booking").usingGeneratedKeyColumns("id");

        SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(booking);
        Number key = jdbcInsert.executeAndReturnKey(sqlParameterSource);
        booking.setId(key.longValue());
        return booking;
    }

    public Optional<Booking> findById(Long id) {
        String selectById = "SELECT * FROM booking WHERE id = ?";
        List<Booking> result = jdbcTemplate.query(selectById, bookingRowMapper(), id);
        return result.stream().findAny();
    }

    private RowMapper<Booking> bookingRowMapper() {
        return (rs, rowNum) -> {
            Booking booking = Booking.create(rs.getLong("id"),
            rs.getObject("check_in", LocalDate.class), rs.getObject("check_out", LocalDate.class),
            rs.getInt("guest"),
            rs.getBigDecimal("total_price"),
            rs.getLong("user"),
            rs.getLong("room"));
            return booking;
        };
    }
}
