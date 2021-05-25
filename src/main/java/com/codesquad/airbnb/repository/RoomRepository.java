package com.codesquad.airbnb.repository;

import com.codesquad.airbnb.domain.Room;
import com.codesquad.airbnb.domain.RoomBuilder;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class RoomRepository implements JdbcRepository<Room> {

    private JdbcTemplate jdbcTemplate;

    public RoomRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<Room> getRoomsByDateAndPriceAndNumberOfPeople(String checkIn, String checkOut, int minPrice, int maxPrice, int numberOfPeople) {
        // 조인한 BookingRoom 에서 booking의 checkIn, checkOut이 매개변수로 받은 체크인 체크아웃 범위에 들어가있지 않은 room들만 반환
        String sql = "select room.id, `max`, `name`, `rating`, `latitude`, `longitude`, `bedroom_count`, `bed_count`, " +
                "`bathroom_count`, `address`, `detail_address`, `comment_count`, `original_price`, `sale_price`, " +
                "`flexible_refund`, `immediate_booking` from room " +
                "left join booking on booking.room_id = room.id where `sale_price` >= ? and `sale_price` <= ? and `max` >= ? and " +
                "(date_format(?, '%Y-%m-%d') not between date_format(check_in, '%Y-%m-%d') and date_format(check_out, '%Y-%m-%d') and " +
                "date_format(?, '%Y-%m-%d') not between date_format(check_in, '%Y-%m-%d') and date_format(check_out, '%Y-%m-%d')) or " +
                "(check_in is null and check_out is null)";
        return jdbcTemplate.query(sql, roomRowMapper(), minPrice, maxPrice, numberOfPeople, checkIn, checkOut);
    }

    @Override
    public Optional<Room> findById(Long id) {
        String sql = "select `id`, `max`, `name`, `rating`, `latitude`, `longitude`, `bedroom_count`, `bed_count`, " +
                "`bathroom_count`, `address`, `detail_address`, `comment_count`, `original_price`, `sale_price`, " +
                "`flexible_refund`, `immediate_booking` from room where id = ?";
        List<Room> result = jdbcTemplate.query(sql, roomRowMapper(), id);
        return result.stream().findAny();
    }

    @Override
    public List<Room> findAll() {
        String sql = "select `id`, `max`, `name`, `rating`, `latitude`, `longitude`, `bedroom_count`, `bed_count`, " +
                "`bathroom_count`, `address`, `detail_address`, `comment_count`, `original_price`, `sale_price`, " +
                "`flexible_refund`, `immediate_booking` from room";
        return jdbcTemplate.query(sql, roomRowMapper());
    }

    @Override
    public void insert(Room room) {

    }

    @Override
    public void update(Room room, Long id) {

    }

    @Override
    public void delete(Long id) {

    }

    private RowMapper<Room> roomRowMapper() {
        return (resultSet, rowNum) -> {
            Room room = new RoomBuilder().setId(resultSet.getLong("id"))
                    .setMax(resultSet.getInt("max"))
                    .setName(resultSet.getString("name"))
                    .setRating(resultSet.getDouble("rating"))
                    .setLatitude(resultSet.getDouble("latitude"))
                    .setLongitude(resultSet.getDouble("longitude"))
                    .setBedroomCount(resultSet.getInt("bedroom_count"))
                    .setBedCount(resultSet.getInt("bed_count"))
                    .setBathroomCount(resultSet.getInt("bathroom_count"))
                    .setAddress(resultSet.getString("address"))
                    .setDetailAddress(resultSet.getString("detail_address"))
                    .setCommentCount(resultSet.getInt("comment_count"))
                    .setOriginalPrice(resultSet.getInt("original_price"))
                    .setSalePrice(resultSet.getInt("sale_price"))
                    .setFlexibleRefund(resultSet.getInt("flexible_refund"))
                    .setImmediateBooking(resultSet.getInt("immediate_booking"))
                    .build();
            return room;
        };
    }
}
