package com.airbnb.service;

import com.airbnb.domain.User;
import com.airbnb.dto.AccessTokenRequest;
import com.airbnb.dto.AccessTokenResponse;
import com.airbnb.dto.UserDto;
import com.airbnb.exception.AuthenticationException;
import com.airbnb.repository.LoginRepository;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import static org.springframework.http.HttpHeaders.ACCEPT;
import static org.springframework.http.HttpHeaders.AUTHORIZATION;
import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE;

@Service
public class OauthService {
    private static final String GITHUB_ACCESS_TOKEN_URI = "https://github.com/login/oauth/access_token";
    private static final String GITHUB_USER_URI = "https://api.github.com/user";

    private static WebClient accessTokenClient = WebClient.builder()
            .baseUrl(GITHUB_ACCESS_TOKEN_URI)
            .defaultHeader(ACCEPT, APPLICATION_JSON_VALUE)
            .build();
    private static WebClient userClient = WebClient.builder()
            .baseUrl(GITHUB_USER_URI)
            .defaultHeader(ACCEPT, APPLICATION_JSON_VALUE)
            .build();

    private final LoginRepository loginRepository;

    public OauthService(LoginRepository loginRepository) {
        this.loginRepository = loginRepository;
    }

    @Value("${github.client.id}")
    private String CLIENT_ID;

    @Value("${github.client.secret}")
    private String CLIENT_SECRET;

    public AccessTokenResponse getAccessToken(String code) {
        return accessTokenClient.post()
                .bodyValue(new AccessTokenRequest(CLIENT_ID, CLIENT_SECRET, code))
                .retrieve()
                .bodyToMono(AccessTokenResponse.class)
                .block();
    }

    public UserDto getUserFromGitHub(String accessToken) {
        return userClient.get()
                .header(AUTHORIZATION, "token " + accessToken)
                .retrieve()
                .bodyToMono(UserDto.class)
                .block();
    }

    public void saveLoggedInUser(UserDto userDto, AccessTokenResponse accessTokenResponse) {
        User user = userDto.toUser(accessTokenResponse);
        loginRepository.save(user);
    }

    public void authenticate(UserDto userDto) {
        loginRepository.findByName(userDto.getName())
                .orElseThrow(() -> new AuthenticationException("로그인하지 않은 유저입니다."));
    }
}
