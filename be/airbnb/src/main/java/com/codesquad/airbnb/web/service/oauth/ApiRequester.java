package com.codesquad.airbnb.web.service.oauth;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class ApiRequester {
    private final RestTemplate restTemplate;

    public ApiRequester(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public  <T> T callApi(String url, HttpMethod method, HttpHeaders headers, Object body, Class<T> responseType) {
        headers.setContentType(MediaType.APPLICATION_JSON);
        HttpEntity<Object> httpEntity = new HttpEntity<>(body, headers);
        return restTemplate.exchange(url, method, httpEntity, responseType).getBody();
    }
}
