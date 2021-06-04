package com.team19.airbnb.repository;

import com.team19.airbnb.domain.User;
import com.team19.airbnb.domain.Wishlist;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;
import java.util.Optional;

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

    public void updateWishlist(User user, Wishlist wishlist) {
        String query = "insert into wishlist (user, user_key, room) values(?,?,?)";
        jdbcTemplate.update(query, user.getId(), user.getWishlists().size() - 1, wishlist.getRoom());
    }

    public void removeWishlist(User user, Wishlist wishlist) {
        String query = "delete from wishlist where user = ? and room = ?";
        jdbcTemplate.update(query, user.getId(), wishlist.getRoom());
    }

    private RowMapper<Wishlist> wishlistRowMapper() {
        return (rs, rowNum) -> {
            return Wishlist.create(rs.getLong("id"),
                    rs.getLong("room"));
        };
    }
}
