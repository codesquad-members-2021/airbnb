package com.codesquad.airbnb.web.service;

import com.codesquad.airbnb.web.config.GithubApi;
import com.codesquad.airbnb.web.config.ServerSecret;
import com.codesquad.airbnb.web.dto.RequestAccessToken;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Slf4j
@Service
public class ApiRequester {

    private final ServerSecret serverSecret;
    private final GithubApi githubApi;
    private final RestTemplate restTemplate;

    public ApiRequester(ServerSecret serverSecret, GithubApi githubApi, RestTemplate restTemplate) {
        this.serverSecret = serverSecret;
        this.githubApi = githubApi;
        this.restTemplate = restTemplate;
    }

    public void githubAccessToken(String code) {
        log.info("code : {}", code);
        log.info("{} : {}", serverSecret.getClientIdKey(), serverSecret.getClientIdValue());
        log.info("{} : {}", serverSecret.getClientSecretKey(), serverSecret.getClientSecretValue());
        RequestAccessToken requestAccessToken = RequestAccessToken.builder()
                .clientId(serverSecret.getClientIdValue())
                .clientSecret(serverSecret.getClientSecretValue())
                .code(code)
                .build();

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        headers.setContentLength(151L);
        String result = requestApi(githubApi.getAccessTokenUrl(), HttpMethod.POST, headers, requestAccessToken);
        log.info("result : {}", result);
    }

    private String requestApi(String url, HttpMethod method, HttpHeaders httpHeaders, Object body) {
        return restTemplate.exchange(url, method, new HttpEntity<>(body, httpHeaders), String.class).getBody();
    }
}
