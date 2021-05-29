package com.team19.airbnb.repository;

import com.team19.airbnb.domain.User;
import com.team19.airbnb.domain.Wishlist;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;

import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;

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
        String selectById = "SELECT `id`, `github` FROM `user` WHERE `id` = ?";
        List<User> result = jdbcTemplate.query(selectById, userRowMapper(), id);
        return result.stream().findAny();
    }

    public User save(User user) {
        SimpleJdbcInsert jdbcInsert = new SimpleJdbcInsert(jdbcTemplate);
        jdbcInsert.withTableName("user").usingGeneratedKeyColumns("id");

        SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(user);
        Number key = jdbcInsert.executeAndReturnKey(sqlParameterSource);
        user.setId(key.longValue());
        return user;
    }
    //빌더패턴 적용?
    private RowMapper<User> userRowMapper() {
        return (rs, rowNum) -> {
            List<Wishlist> wishlists = wishlistDAO.findAllByUser(rs.getLong("id"));
            User user = User.create(rs.getLong("id"),
                    rs.getString("github"),
                    wishlists);
            return user;
        };
    }
}
