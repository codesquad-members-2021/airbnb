package com.codesquad.airbnb.repository;

import com.codesquad.airbnb.domain.Booking;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class BookingRepository {

    private JdbcTemplate jdbcTemplate;

    public BookingRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public Optional<Booking> findById(Long bookingId) {
        String sql = "select `id`, `room_id`,`user_id`, `check_in`, `check_out`, `number_of_people`, `total_price` from booking where id = ?";
        List<Booking> result = jdbcTemplate.query(sql, bookingRowMapper(), bookingId);
        return result.stream().findAny();
    }

    public List<Booking> findAll() {
        String sql = "select `id`, `room_id`, `user_id`, `check_in`, `check_out`, `number_of_people`, `total_price` from booking";
        return jdbcTemplate.query(sql, bookingRowMapper());
    }

    public void insert(Booking booking) {
        String sql = "insert into `booking` (`room_id`, `user_id`, `check_in`, `check_out`, `number_of_people`, `total_price`) values (?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, booking.getRoomId(), booking.getUserId(), booking.getCheckIn(),
                booking.getCheckOut(), booking.getNumberOfPeople(), booking.getTotalPrice());
    }

    public void delete(Long bookingId) {
        String sql = "delete from `booking` where booking.id = ?";
        jdbcTemplate.update(sql, bookingId);
    }

    public List<Booking> findDuplicatedBooking(Booking booking) {
        String sql = "select booking.id, room_id, user_id, check_in, check_out, number_of_people, total_price" +
                " from `booking` left join `room` on room_id = room.id" +
                " where room_id = ? and" +
                " (? between check_in and check_out and ? > check_out) or" +
                " (? < check_in and ? between check_in and check_out) or" +
                " (? between check_in and check_out and ? between check_in and check_out) or" +
                " (? < check_in and ? > check_out)";

        return jdbcTemplate.query(sql, bookingRowMapper(), booking.getRoomId(),
                booking.getCheckIn(), booking.getCheckOut(), booking.getCheckIn(), booking.getCheckOut(),
                booking.getCheckIn(), booking.getCheckOut(), booking.getCheckIn(), booking.getCheckOut());
    }

    private RowMapper<Booking> bookingRowMapper() {
        return (resultSet, rowNum) -> {
            Booking booking = new Booking(resultSet.getLong("id"), resultSet.getLong("room_id"),
                    resultSet.getLong("user_id"), resultSet.getDate("check_in").toLocalDate(),
                    resultSet.getDate("check_out").toLocalDate(), resultSet.getInt("number_of_people"),
                    resultSet.getInt("total_price"));
            return booking;
        };
    }
}
