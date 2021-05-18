package team01.airbnb.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
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
            return jdbcTemplate.queryForObject(query, new Object[]{username}, (rs, rowNum) -> {
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
        RestTemplate rt = new RestTemplate();
        // HttpHeader 오브젝트 생성
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
        // bodyBody 오브젝트 생성
        MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
        params.add("grant_type", kakaoLoginUtils.getGrantType());
        params.add("client_id", kakaoLoginUtils.getClientId());
        params.add("redirect_uri", kakaoLoginUtils.getRedirectUri());
        params.add("code", code);
        // HttpHeader와 HttpBody를 하나의 오브젝트에 담기
        HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest = new HttpEntity<>(params, headers);
        // Http 요청하기 - Post 방식으로 - 그리고 response 변수의 응답 받음
        ResponseEntity<String> response = rt.exchange(
                kakaoLoginUtils.getTokenUri(),
                HttpMethod.POST,
                kakaoTokenRequest,
                String.class
        );
        // Json 데이터를 자바 오브젝트로 처리
        ObjectMapper objectMapper = new ObjectMapper();
        OAuthToken oauthToken = null;
        try {
            oauthToken = objectMapper.readValue(response.getBody(), OAuthToken.class);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        String accessToken = oauthToken.getAccess_token();
        System.out.println("카카오 엑세스 토큰 : " + accessToken);
        return accessToken;
    }

    public KakaoProfile getKakaoProfile(String accessToken) {
        RestTemplate rt = new RestTemplate();
        // HttpHeader 오브젝트 생성
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "Bearer " + accessToken);
        headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
        // HttpHeader와 HttpBody를 하나의 오브젝트에 담기
        HttpEntity<MultiValueMap<String, String>> kakaoProfileRequest = new HttpEntity<>(headers);
        // Http 요청하기 - Post 방식으로 - 그리고 response 변수의 응답 받음
        ResponseEntity<String> response = rt.exchange(
                kakaoLoginUtils.getProfileUri(),
                HttpMethod.POST,
                kakaoProfileRequest,
                String.class
        );
        // Json 데이터를 자바 오브젝트로 처리
        ObjectMapper objectMapper = new ObjectMapper();
        KakaoProfile kakaoProfile = null;
        try {
            kakaoProfile = objectMapper.readValue(response.getBody(), KakaoProfile.class);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        System.out.println("카카오 아이디(번호) : " + kakaoProfile.getId());
        System.out.println("카카오 닉네임 : " + kakaoProfile.getProperties().getNickname());
        System.out.println("카카오 이메일 : " + kakaoProfile.getKakao_account().getEmail());
        return kakaoProfile;
    }

    public void kakaoLogout(String accessToken) {
        RestTemplate rt = new RestTemplate();
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "Bearer " + accessToken);
        HttpEntity<MultiValueMap<String, String>> kakaoLogoutRequest = new HttpEntity<>(headers);
        ResponseEntity<String> response = rt.exchange(
                "https://kapi.kakao.com/v1/user/logout",
                HttpMethod.POST,
                kakaoLogoutRequest,
                String.class
        );
        ObjectMapper objectMapper = new ObjectMapper();
        KakaoLogout kakaoLogout = null;
        try {
            kakaoLogout = objectMapper.readValue(response.getBody(), KakaoLogout.class);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        System.out.println("카카오 id 번호 : " + kakaoLogout.getId());
    }
}
