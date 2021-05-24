package com.codesquad.airbnb.web.service;

import com.codesquad.airbnb.web.config.ServerSecret;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Slf4j
@Service
public class ApiRequester {

    private final ServerSecret serverSecret;
    private final RestTemplate restTemplate;

    public ApiRequester(ServerSecret serverSecret, RestTemplate restTemplate) {
        this.serverSecret = serverSecret;
        this.restTemplate = restTemplate;
    }

    public void githubAccessToken(String code) {
        log.info("code : {}", code);
        log.info("clientId : {}", serverSecret.getId());
        log.info("clientSecret : {}", serverSecret.getSecret());
    }

    private String callApiEndpoint(String url, HttpHeaders httpHeaders, Object body) {
        return restTemplate.exchange(url, HttpMethod.GET, new HttpEntity<>(body, httpHeaders), String.class).getBody();
    }
}
