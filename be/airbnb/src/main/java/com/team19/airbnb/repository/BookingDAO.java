package com.team19.airbnb.repository;

import com.team19.airbnb.domain.Booking;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Repository
public class BookingDAO {

    private final JdbcTemplate jdbcTemplate;
    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    @Autowired
    public BookingDAO(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
        namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }

    public Booking save(Booking booking) {
        SimpleJdbcInsert jdbcInsert = new SimpleJdbcInsert(jdbcTemplate);
        jdbcInsert.withTableName("booking").usingGeneratedKeyColumns("id");

        SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(booking);
        Number key = jdbcInsert.executeAndReturnKey(sqlParameterSource);
        booking.checkId(key.longValue());
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


    public void bookReservation(Booking booking, Long userId) {
        String query = "INSERT INTO booking (check_in, check_out, guest, total_price, user, room) VALUES (?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(query, booking.getCheckIn(), booking.getCheckOut(), booking.getGuest(), booking.getTotalPrice(), userId, booking.getRoom());
    }

    public void deleteReservation(Long bookingId, Long userId) {
        String query = "DELETE FROM booking WHERE id = ? AND user = ?";
        jdbcTemplate.update(query, bookingId, userId);
    }
}
