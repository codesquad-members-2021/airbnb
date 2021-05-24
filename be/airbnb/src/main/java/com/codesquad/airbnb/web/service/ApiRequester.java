package com.codesquad.airbnb.web.service;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class ApiRequester<T> {

    private final RestTemplate restTemplate;

    public ApiRequester(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    private ResponseEntity<T> callApiEndpoint(String url, HttpHeaders httpHeaders, Object body, Class<T> clazz) {
        return restTemplate.exchange(url, HttpMethod.GET, new HttpEntity<>(body, httpHeaders), clazz);
    }
}
