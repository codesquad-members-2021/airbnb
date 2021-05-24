package com.codesquad.airbnb.web.service;

import com.codesquad.airbnb.web.config.properties.GithubApi;
import com.codesquad.airbnb.web.config.properties.ServerSecret;
import com.codesquad.airbnb.web.dto.GithubProfile;
import com.codesquad.airbnb.web.dto.ReceivedAccessToken;
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

    public String githubAccessToken(String code) {
        RequestAccessToken requestAccessToken = RequestAccessToken.builder()
                .clientId(serverSecret.getClientIdValue())
                .clientSecret(serverSecret.getClientSecretValue())
                .code(code)
                .build();
        ReceivedAccessToken receivedAccessToken = callApi(githubApi.getAccessTokenUrl(), HttpMethod.POST,
                new HttpHeaders(), requestAccessToken, ReceivedAccessToken.class);
        return receivedAccessToken.getAccessToken();
    }

    public GithubProfile githubProfile(String accessToken) {
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        headers.setBearerAuth(accessToken);
        return callApi(githubApi.getProfileUrl(), HttpMethod.GET, headers, HttpEntity.EMPTY, GithubProfile.class);
    }

    private <T> T callApi(String url, HttpMethod method, HttpHeaders headers, Object body, Class<T> responseType) {
        headers.setContentType(MediaType.APPLICATION_JSON);
        HttpEntity<Object> httpEntity = new HttpEntity<>(body, headers);
        return restTemplate.exchange(url, method, httpEntity, responseType).getBody();
    }
}
