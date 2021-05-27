package com.team19.airbnb.repository;

import com.team19.airbnb.domain.Booking;
import com.team19.airbnb.domain.Wishlist;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;
import java.util.Optional;

//사용되고있지 않음
@Repository
public class WishlistDAO {

    private final JdbcTemplate jdbcTemplate;

    public WishlistDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public Optional<Wishlist> findById(Long id) {
        String selectById = "SELECT `id`, `room` FROM `wishlist` WHERE `id` = ?";
        List<Wishlist> result = jdbcTemplate.query(selectById, wishlistRowMapper(), id);
        return result.stream().findAny();
    }

    public List<Wishlist> findAllByUser(Long user) {
        String selectByUser = "SELECT `id`, `room` FROM `wishlist` WHERE `user` = ?";
        return jdbcTemplate.query(selectByUser, wishlistRowMapper(), user);
    }

    private RowMapper<Wishlist> wishlistRowMapper() {
        return (rs, rowNum) -> {
            return Wishlist.create(rs.getLong("id"),
                    rs.getLong("room"));
        };
    }

}
