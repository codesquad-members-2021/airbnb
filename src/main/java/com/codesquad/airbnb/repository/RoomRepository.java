package com.codesquad.airbnb.repository;

import com.codesquad.airbnb.domain.*;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Repository
public class RoomRepository implements JdbcRepository<Room> {

    private JdbcTemplate jdbcTemplate;

    public RoomRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<Room> getFilteredRooms(LocalDate checkIn, LocalDate checkOut, int minPrice, int maxPrice, int numberOfPeople) {
        String sql = "select room.id, `max`, `name`, `rating`, `latitude`, `longitude`, `bedroom_count`, `bed_count`, " +
                "`bathroom_count`, `address`, `detail_address`, `comment_count`, `original_price`, `sale_price`, " +
                "`flexible_refund`, `immediate_booking` from `room` " +
                "left join `booking` on room.id = booking.room_id " +
                "where (`sale_price` between ? and ?) and `max` >= ? and " +
                "(? not between check_in and check_out and ? not between check_in and check_out) or " +
                "(check_in is null and check_out is null)";

        List<Room> rooms = jdbcTemplate.query(sql, roomRowMapper(), minPrice, maxPrice, numberOfPeople, checkIn, checkOut);

        rooms.forEach(System.out::println);

        return rooms.stream()
                .map(room -> addThumbnailsAndOptionAndBadges(room))
                .collect(Collectors.toList());
    }

    @Override
    public Optional<Room> findById(Long id) {
        String sql = "select `id`, `max`, `name`, `rating`, `latitude`, `longitude`, `bedroom_count`, `bed_count`, " +
                "`bathroom_count`, `address`, `detail_address`, `comment_count`, `original_price`, `sale_price`, " +
                "`flexible_refund`, `immediate_booking` from room where id = ?";

        List<Room> rooms = jdbcTemplate.query(sql, roomRowMapper(), id);

        return rooms.stream()
                .map(room -> addThumbnailsAndOptionAndBadges(room)).findAny();
    }

    @Override
    public List<Room> findAll() {
        String sql = "select `id`, `max`, `name`, `rating`, `latitude`, `longitude`, `bedroom_count`, `bed_count`, " +
                "`bathroom_count`, `address`, `detail_address`, `comment_count`, `original_price`, `sale_price`, " +
                "`flexible_refund`, `immediate_booking` from room";

        List<Room> rooms = jdbcTemplate.query(sql, roomRowMapper());

        return rooms.stream()
                .map(room -> addThumbnailsAndOptionAndBadges(room))
                .collect(Collectors.toList());
    }

    private Room addThumbnailsAndOptionAndBadges(Room room) {
        List<Thumbnail> thumbnails = findThumbnailsByRoomId(room.getId());
        room.setThumbnails(thumbnails);

        Optional<Option> option = findOptionByRoomId(room.getId());
        room.setOption(option);

        List<Badge> badges = findBadgeByRoomId(room.getId());
        room.setBadges(badges);

        return room;
    }

    private List<Thumbnail> findThumbnailsByRoomId(Long roomId) {
        String sql = "select room_id, thumbnail from thumbnail where room_id = ?";
        return jdbcTemplate.query(sql, thumbnailRowMapper(), roomId);
    }

    private Optional<Option> findOptionByRoomId(Long roomId) {
        String sql = "select room_id, kitchen, air_conditioner, wifi, free_parking_lot, hair_dryer from `option` where room_id = ?";
        return jdbcTemplate.query(sql, optionRowMapper(), roomId).stream().findAny();
    }

    private List<Badge> findBadgeByRoomId(Long roomId) {
        String sql = "select room_id, type from badge where room_id = ?";
        return jdbcTemplate.query(sql, badgeRowMapper(), roomId);
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
                    .setFlexibleRefund(resultSet.getBoolean("flexible_refund"))
                    .setImmediateBooking(resultSet.getBoolean("immediate_booking"))
                    .setThumbnails(new ArrayList<>())
                    .setOptions(Optional.empty())
                    .setBadges(new ArrayList<>())
                    .build();
            return room;
        };
    }

    private RowMapper<Thumbnail> thumbnailRowMapper() {
        return (resultSet, rowNum) -> {
            Thumbnail thumbnail = new Thumbnail(resultSet.getString("thumbnail"));
            return thumbnail;
        };
    }

    private RowMapper<Badge> badgeRowMapper() {
        return (resultSet, rowNum) -> {
            Badge badge = new Badge(resultSet.getString("type"));
            return badge;
        };
    }

    private RowMapper<Option> optionRowMapper() {
        return (resultSet, rowNum) -> {
            Option option = new Option(resultSet.getBoolean("kitchen"), resultSet.getBoolean("air_conditioner"),
                    resultSet.getBoolean("wifi"), resultSet.getBoolean("free_parking_lot"), resultSet.getBoolean("hair_dryer"));
            return option;
        };
    }
}
