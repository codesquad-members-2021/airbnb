package com.codesquad.airbnb.service;

import com.codesquad.airbnb.dto.OAuthToken;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

@Service
public class UserService {

    private final ObjectMapper objectMapper;
    private final RestTemplate restTemplate;

    private static final String CLIENT_ID = "";
    private static final String CLIENT_SECRET = "";
    private static final String REDIRECT_URI = "http://localhost:8080/oauth/google/callback";
    private static final String GRANT_TYPE = "authorization_code";


    public UserService(ObjectMapper objectMapper, RestTemplate restTemplate) {
        this.objectMapper = objectMapper;
        this.restTemplate = restTemplate;
    }

    // HTTP post request 만들기
    public ResponseEntity<String> createPost(String code) {
        // Body 생성
        MultiValueMap<String, String> params = new LinkedMultiValueMap<>(); //form 타입의 key, value를 넣기 위해 사용한다.
        params.add("code", code);
        params.add("client_id", CLIENT_ID);
        params.add("client_secret", CLIENT_SECRET);
        params.add("redirect_uri", REDIRECT_URI);
        params.add("grant_type", GRANT_TYPE);

        // 헤더 생성
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/x-www-form-urlencoded");

        String url = "https://oauth2.googleapis.com/token";

        // 바디 + 헤더 = HttpEntity 만들기
        HttpEntity httpEntity = new HttpEntity(params, headers);

        // RestTemplate으로 HTTP post 요청 만들기
        return restTemplate.exchange(url, HttpMethod.POST, httpEntity, String.class);
    }

    // 위의 post요청의 response를 OAuth토큰 객체로 만들어 주기
    public OAuthToken getAccessToken(ResponseEntity<String> response) {
        OAuthToken oAuthToken = null;
        try { // response의 body를 OAuthToken을 맵핑
            oAuthToken = objectMapper.readValue(response.getBody(), OAuthToken.class);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return oAuthToken;
    }


}
