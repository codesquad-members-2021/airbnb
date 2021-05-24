package com.codesquad.airbnb.web.service.users;

import com.codesquad.airbnb.web.domain.OAuthAuthenticater;
import com.codesquad.airbnb.web.domain.User;
import com.codesquad.airbnb.web.domain.UserRepository;
import com.codesquad.airbnb.web.service.mapper.UserMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Service;

import java.util.Objects;
import java.util.Optional;

import static com.codesquad.airbnb.web.sqls.UserSqlKt.*;

@Slf4j
@Service
public class UserDAO implements UserRepository {

    private final NamedParameterJdbcTemplate jdbcTemplate;
    private final UserMapper userMapper;

    public UserDAO(NamedParameterJdbcTemplate jdbcTemplate, UserMapper userMapper) {
        this.jdbcTemplate = jdbcTemplate;
        this.userMapper = userMapper;
    }

    @Override
    public User save(User user) {
        KeyHolder keyHolder = new GeneratedKeyHolder();
        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource()
                .addValue("nickname", user.getNickname())
                .addValue("name", user.getName())
                .addValue("profile_image", user.getProfileImage())
                .addValue("access_token", user.getAccessToken())
                .addValue("oauth_id", user.getOauthId())
                .addValue("authenticated_by", user.getAuthenticatedBy().name());
        jdbcTemplate.update(SAVE_USER, mapSqlParameterSource, keyHolder);
        user.setId(Objects.requireNonNull(keyHolder.getKey()).intValue());
        return user;
    }

    @Override
    public Optional<User> findUserByAuthenticatedByAndOauthId(OAuthAuthenticater oAuthAuthenticater, String oauthId) {
        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource()
                .addValue("authenticated_by", oAuthAuthenticater.name())
                .addValue("oauth_id", oauthId);
        try {
            User user = jdbcTemplate.queryForObject(FIND_USER_BY_ID, mapSqlParameterSource, userMapper);
            return Optional.ofNullable(user);
        } catch (EmptyResultDataAccessException e) {
            return Optional.empty();
        }
    }

    @Override
    public void updateAccessToken(int id, String newToken) {
        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource()
                .addValue("id", id)
                .addValue("access_token", newToken);
        jdbcTemplate.update(UPDATE_TOKEN, mapSqlParameterSource);
    }
}
