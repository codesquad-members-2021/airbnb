package com.enolj.airbnb.authorization;

import com.enolj.airbnb.errorHandler.RestTemplateResponseErrorHandler;
import com.enolj.airbnb.exception.ErrorMessage;
import com.enolj.airbnb.exception.OAuthException;
import com.enolj.airbnb.web.dto.EmailDTO;
import com.enolj.airbnb.web.dto.TokenDTO;
import com.enolj.airbnb.web.dto.UserInfoDTO;
import com.enolj.airbnb.web.utils.GitHubType;
import com.enolj.airbnb.web.utils.GitHubUrl;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.List;

@PropertySource("classpath:/oauth.properties")
@Component
public class GitHubOAuth implements OAuth{

    public static final String CLIENT_ID = "client_id";
    public static final String CLIENT_SECRET = "client_secret";
    public static final String CODE = "code";
    public static final String TOKEN = "token";

    private final RestTemplate restTemplate;
    private final Environment environment;

    public GitHubOAuth(Environment environment, RestTemplateBuilder restTemplateBuilder) {
        this.restTemplate = restTemplateBuilder.errorHandler(new RestTemplateResponseErrorHandler()).build();
        this.environment = environment;
    }

    @Override
    public TokenDTO tokenReceiveAPI(String code, int typeCode) {
        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(GitHubUrl.ACCESS_TOKEN.getUrl())
                .queryParam(CLIENT_ID, id)
                .queryParam(CLIENT_SECRET, secret)
                .queryParam(CODE, code);
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.set(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE);
        httpHeaders.set(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE);
        HttpEntity<?> httpEntity = new HttpEntity<>(httpHeaders);
        return restTemplate.exchange(builder.toUriString(), HttpMethod.POST, httpEntity, TokenDTO.class).getBody();
    }

    @Override
    public UserInfoDTO userInfoReceiveAPI(String token) {
        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(GitHubUrl.USER_INFO.getUrl());
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.set(HttpHeaders.AUTHORIZATION, TOKEN + " " + token);
        HttpEntity<?> httpEntity = new HttpEntity<>(httpHeaders);
        return restTemplate.exchange(builder.toUriString(), HttpMethod.GET, httpEntity, UserInfoDTO.class).getBody();
    }

    @Override
    public EmailDTO emailReceiveAPI(String token) {
        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(GitHubUrl.USER_EMAIL.getUrl());
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.set(HttpHeaders.AUTHORIZATION, TOKEN + " " + token);
        HttpEntity<?> httpEntity = new HttpEntity<>(httpHeaders);
        List<EmailDTO> emailDTOList = restTemplate.exchange(builder.toUriString(), HttpMethod.GET, httpEntity, new ParameterizedTypeReference<List<EmailDTO>>() {}).getBody();
        return emailDTOList.stream().findFirst().orElseThrow(
                () -> new OAuthException(ErrorMessage.OAUTH_FAILED)
        );
    }
}
