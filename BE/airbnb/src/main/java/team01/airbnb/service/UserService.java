package team01.airbnb.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;
import team01.airbnb.dto.*;
import team01.airbnb.domain.User;
import team01.airbnb.exception.NoResultSetException;
import team01.airbnb.exception.NotProcessJsonException;
import team01.airbnb.utils.KakaoLoginUtils;

@Slf4j
@Service
public class UserService {

    private final JdbcTemplate jdbcTemplate;
    private final KakaoLoginUtils kakaoLoginUtils;
    private final ObjectMapper objectMapper;

    public UserService(JdbcTemplate jdbcTemplate
            , KakaoLoginUtils kakaoLoginUtils
            , ObjectMapper objectMapper) {
        this.jdbcTemplate = jdbcTemplate;
        this.kakaoLoginUtils = kakaoLoginUtils;
        this.objectMapper = objectMapper;
    }

    @Transactional
    public User findByUser(User targetUser) {
        String username = targetUser.getUsername(); // todo : 더 강화된 정책 필요
        String query = "SELECT * FROM user WHERE username = ?";
        try {
            return jdbcTemplate.queryForObject(
                    query, new Object[]{username}, (rs, rowNum) -> {
                        User user = new User();
                        user.setId(rs.getLong("id"));
                        user.setUsername(rs.getString("username"));
                        user.setEmail(rs.getString("email"));
                        user.setRole(RoleType.valueOf(rs.getString("role")));
                        user.setCreateDate(rs.getDate("created_date").toLocalDate());
                        return user;
                    });
        } catch (EmptyResultDataAccessException e) {
            throw new NoResultSetException();
        }
    }

    @Transactional
    public boolean join(User user) {
        int result = jdbcTemplate.update("INSERT INTO user (`username`, `email`, `role`) VALUES(?, ?, ?)"
                , user.getUsername(), user.getEmail(), user.getRole().name());
        return result == 1;
    }

    public String getAccessToken(String code) {
        OAuthToken oauthToken = getObjectbyPost(
                kakaoLoginUtils.getTokenUri()
                , kakaoLoginUtils.getTokenRequestEntity(code)
                , OAuthToken.class);
        log.info("oauthToken : {}", oauthToken.toString());
        return oauthToken.getAccess_token();
    }

    public SocialProfile getKakaoProfile(String accessToken) {
        KakaoProfile kakaoProfile = getObjectbyPost(
                kakaoLoginUtils.getProfileUri()
                , kakaoLoginUtils.getKakaoProfileRequestEntity(accessToken)
                , KakaoProfile.class);
        log.info("kakaoProfile : {}", kakaoProfile);
        return kakaoProfile;
    }

    public Long kakaoLogout(String accessToken) {
        KakaoLogout kakaoLogout = getObjectbyPost(
                kakaoLoginUtils.getLogoutUri()
                , kakaoLoginUtils.getLogoutRequestEntity(accessToken)
                , KakaoLogout.class);
        log.info("kakaoLogout : {}", kakaoLogout.toString());
        return kakaoLogout.getId();
    }

    private <T> T getObjectbyPost(String uri, @Nullable Object request, Class<T> responseType) {
        return new RestTemplate().postForObject(
                uri
                , request
                , responseType);
    }
}
