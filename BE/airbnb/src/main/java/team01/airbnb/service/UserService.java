package team01.airbnb.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;
import team01.airbnb.dto.KakaoLogout;
import team01.airbnb.dto.KakaoProfile;
import team01.airbnb.dto.OAuthToken;
import team01.airbnb.dto.RoleType;
import team01.airbnb.domain.User;
import team01.airbnb.utils.KakaoLoginUtils;

@Service
public class UserService {

    private final JdbcTemplate jdbcTemplate;
    private final KakaoLoginUtils kakaoLoginUtils;

    public UserService(JdbcTemplate jdbcTemplate
            , KakaoLoginUtils kakaoLoginUtils) {
        this.jdbcTemplate = jdbcTemplate;
        this.kakaoLoginUtils = kakaoLoginUtils;
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
                user.setCreateDate(rs.getDate("join_date"));
                return user;
            });
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    @Transactional
    public int join(User user) {
        return jdbcTemplate.update("INSERT INTO user (`username`, `email`, `role`) VALUES(?, ?, ?)"
                , user.getUsername(), user.getEmail(), user.getRole().name());
    }

    public String getAccessToken(String code) {
        // POST방식으로 key=value 데이터를 요청 (카카오 쪽으로)
        // Http 요청하기 - Post 방식으로 - 그리고 response 변수의 응답 받음
        ResponseEntity<String> response = getJsonResponseByPost(
                kakaoLoginUtils.getTokenUri()
                , kakaoLoginUtils.getTokenRequestEntity(code));
        // Json 데이터를 자바 오브젝트로 처리
        OAuthToken oauthToken = convertJsonToObject(response, OAuthToken.class);
        return oauthToken.getAccess_token();
    }

    public KakaoProfile getKakaoProfile(String accessToken) {
        ResponseEntity<String> response = getJsonResponseByPost(
                kakaoLoginUtils.getProfileUri()
                , kakaoLoginUtils.getKakaoProfileRequestEntity(accessToken));
        return convertJsonToObject(response, KakaoProfile.class);
    }

    public Long kakaoLogout(String accessToken) {
        ResponseEntity<String> response = getJsonResponseByPost(
                kakaoLoginUtils.getLogoutUri()
                , kakaoLoginUtils.getLogoutRequestEntity(accessToken));
        KakaoLogout kakaoLogout = convertJsonToObject(response, KakaoLogout.class);
        return kakaoLogout.getId();
    }

    private <T> T convertJsonToObject(ResponseEntity<String> response, Class<T> valueType) {
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            return objectMapper.readValue(response.getBody(), valueType);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return null;
    }

    private ResponseEntity<String> getJsonResponseByPost(String uri, @Nullable HttpEntity<?> requestEntity) {
        return new RestTemplate().exchange(
                uri,
                HttpMethod.POST,
                requestEntity,
                String.class
        );
    }
}
