package com.team19.airbnb.repository;

import com.team19.airbnb.domain.Booking;
import com.team19.airbnb.domain.User;
import com.team19.airbnb.domain.Wishlist;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class UserDAO {

    private final JdbcTemplate jdbcTemplate;
    private final WishlistDAO wishlistDAO;

    public UserDAO(DataSource dataSource, WishlistDAO wishListDAO) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
        this.wishlistDAO = wishListDAO;
    }

    public Optional<User> findById(Long id) {
        String selectById = "SELECT `id`, `github` FROM `user` WHERE id = ?;";
        List<User> result = jdbcTemplate.query(selectById, userRowMapper(), id);
        return result.stream().findAny();
    }

    //빌더패턴 적용?
    private RowMapper<User> userRowMapper() {
         return (rs, rowNum) -> {
            List<Wishlist> wishlists =  wishlistDAO.findAllByUser(rs.getLong("id"));
            User user = User.create(rs.getLong("id"),
                    rs.getString("github"),
                    wishlists);
           return user;
        };

    }
}
