package com.airbnb.service;

import com.airbnb.dto.AccessTokenRequest;
import com.airbnb.dto.AccessTokenResponse;
import com.airbnb.dto.UserDto;
import com.airbnb.exception.GitHubException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Optional;

@Service
public class GitHubService {
    private static final String GITHUB_ACCESS_TOKEN_URI = "https://github.com/login/oauth/access_token";
    private static final String GITHUB_USER_URI = "https://api.github.com/user";
    private static RestTemplate restTemplate = new RestTemplate();

    @Value("${github.client.id}")
    private String CLIENT_ID;

    @Value("${github.client.secret}")
    private String CLIENT_SECRET;

    public AccessTokenResponse getAccessToken(String code) {
        RequestEntity<AccessTokenRequest> request = RequestEntity
                .post(GITHUB_ACCESS_TOKEN_URI)
                .header("Accept", "application/json")
                .body(new AccessTokenRequest(CLIENT_ID, CLIENT_SECRET, code));

        ResponseEntity<AccessTokenResponse> response = restTemplate
                .exchange(request, AccessTokenResponse.class);

        return Optional.ofNullable(response.getBody())
                .orElseThrow(() -> new GitHubException("Access Token 획득 실패"));
    }

    public UserDto getUser(String accessToken) {
        RequestEntity<Void> request = RequestEntity
                .get(GITHUB_USER_URI)
                .header("Accept", "application/json")
                .header("Authorization", "token " + accessToken)
                .build();

        ResponseEntity<UserDto> response = restTemplate
                .exchange(request, UserDto.class);

        return Optional.ofNullable(response.getBody())
                .orElseThrow(() -> new GitHubException("유저 정보 획득 실패"));
    }
}
