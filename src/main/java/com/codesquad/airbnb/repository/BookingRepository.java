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
        String sql = "select `id`, `room_id`,`user_id`, `check_in`, `check_out`, `number_of_people`, `total_price` from booking where id = ?";
        List<Booking> result = jdbcTemplate.query(sql, bookingRowMapper(), bookingId);
        return result.stream().findAny();
    }

    @Override
    public List<Booking> findAll() {
        String sql = "select `id`, `room_id`, `user_id`, `check_in`, `check_out`, `number_of_people`, `total_price` from booking";
        return jdbcTemplate.query(sql, bookingRowMapper());
    }

    public void insert(Booking booking) {
        String sql = "insert into `booking` (`room_id`, `user_id`, `check_in`, `check_out`, `number_of_people`, `total_price`) values (?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, booking.getRoomId(), booking.getUserId(), booking.getCheckIn(),
                booking.getCheckOut(), booking.getNumberOfPeople(), booking.getTotalPrice());
    }

    public List<Booking> read(Booking booking) {
        // 예약 가능한 room 반환 -> service 에서 이 List가 not empty면 예약 가능, empty면 불가능
        String sql = "select booking.id, room_id, user_id, check_in, check_out, number_of_people, total_price from `room` " +
                "left join `booking` on room.id = room_id where room.id = ? and" +
                "(date_format(?, '%Y-%m-%d') not between date_format(check_in, '%Y-%m-%d') and date_format(check_out, '%Y-%m-%d') and " +
                "date_format(?, '%Y-%m-%d') not between date_format(check_in, '%Y-%m-%d') and date_format(check_out, '%Y-%m-%d')) or " +
                "(check_in is null and check_out is null) ";

        return jdbcTemplate.query(sql, bookingRowMapper(), booking.getRoomId(), booking.getCheckIn(), booking.getCheckOut());
    }

    private RowMapper<Booking> bookingRowMapper() {
        return (resultSet, rowNum) -> {
            Booking booking = new Booking(resultSet.getLong("id"), resultSet.getLong("room_id"), resultSet.getLong("user_id"),
                    resultSet.getString("check_in"), resultSet.getString("check_out"), resultSet.getInt("number_of_people"),
                    resultSet.getInt("total_price"));
            return booking;
        };
    }
}
