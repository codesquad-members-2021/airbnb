package com.codesquad.airbnb.web.service.users;

import com.codesquad.airbnb.web.domain.User;
import com.codesquad.airbnb.web.domain.UserRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;

import static com.codesquad.airbnb.web.sqls.UserSqlKt.SAVE_USER;

@Slf4j
@Service
public class UserDAO implements UserRepository {

    private NamedParameterJdbcTemplate jdbcTemplate;

    public UserDAO(NamedParameterJdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public void save(User user) {
        MapSqlParameterSource parameterSource = new MapSqlParameterSource()
                .addValue("nickname", user.getNickname())
                .addValue("name", user.getName())
                .addValue("profile_image", user.getProfileImage())
                .addValue("access_token", user.getAccessToken());
        jdbcTemplate.update(SAVE_USER, parameterSource);
    }
}
