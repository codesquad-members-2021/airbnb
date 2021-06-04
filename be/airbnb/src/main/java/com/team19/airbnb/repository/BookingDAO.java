package com.team19.airbnb.repository;

import com.team19.airbnb.domain.Booking.Booking;
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
        jdbcTemplate = new JdbcTemplate(dataSource);
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
        String selectById = "SELECT `id`, `check_in`, `check_out`, `guest`, `total_price`, `user`, `room` FROM `booking` WHERE id = ?;";
        List<Booking> result = jdbcTemplate.query(selectById, bookingRowMapper(), id);
        return result.stream().findAny();
    }

    public List<Booking> findAllByUser(Long user) {
        String findAllByUser = "SELECT `id`, `check_in`, `check_out`, `guest`, `total_price`, `user`, `room` FROM `booking` WHERE `user` = ?;";
        return jdbcTemplate.query(findAllByUser, bookingRowMapper(), user);
    }

    private RowMapper<Booking> bookingRowMapper() {
        return (rs, rowNum) -> {
            return new Booking.Builder()
                    .id(rs.getLong("id"))
                    .checkIn(rs.getObject("check_in", LocalDate.class))
                    .checkOut(rs.getObject("check_out", LocalDate.class))
                    .guest(rs.getInt("guest"))
                    .totalPrice(rs.getBigDecimal("total_price"))
                    .user(rs.getLong("user"))
                    .room(rs.getLong("room"))
                    .build();
        };
    }
//    public Optional<Booking> findById(Long id) {
//        List<Booking> result = jdbcTemplate.query("select * from booking where id = ?",
//                bookingRowMapper(), id);
//        return result.stream().findAny();
//    }
//
//    private RowMapper<Booking> bookingRowMapper() {
//        return (rs, rowNum) -> {
//           return Booking.create(rs.getLong("id"), rs.getLong("user"),
//                    rs.getObject("check_in", LocalDate.class), rs.getObject("check_out", LocalDate.class));
//        };
//    }

    public void delete(Long bookingId) {
        String query = "DELETE FROM booking WHERE id = ? ";
        jdbcTemplate.update(query, bookingId);
    }
}
