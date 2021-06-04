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
public class GitHubOAuth implements OAuth {

    private static final String CLIENT_ID = "client_id";
    private static final String CLIENT_SECRET = "client_secret";
    private static final String CODE = "code";
    private static final String TOKEN = "token";

    private final RestTemplate restTemplate;
    private final String frontClientId;
    private final String frontClientSecret;
    private final String iOSClientId;
    private final String iOSClientSecret;

    public GitHubOAuth(Environment environment, RestTemplateBuilder restTemplateBuilder) {
        this.restTemplate = restTemplateBuilder.errorHandler(new RestTemplateResponseErrorHandler()).build();
        this.frontClientId = environment.getProperty(GitHubType.FRONT.getClientId());
        this.frontClientSecret = environment.getProperty(GitHubType.FRONT.getClientSecret());
        this.iOSClientId = environment.getProperty(GitHubType.IOS.getClientId());
        this.iOSClientSecret = environment.getProperty(GitHubType.IOS.getClientSecret());
    }

    @Override
    public TokenDTO getToken(String code, int typeCode) {
        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(GitHubUrl.ACCESS_TOKEN.getUrl())
                .queryParam(CLIENT_ID, getClientIdByTypeCode(typeCode))
                .queryParam(CLIENT_SECRET, getClientSecretByTypeCode(typeCode))
                .queryParam(CODE, code);
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.set(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE);
        httpHeaders.set(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE);
        HttpEntity<?> httpEntity = new HttpEntity<>(httpHeaders);
        return restTemplate.exchange(builder.toUriString(), HttpMethod.POST, httpEntity, TokenDTO.class).getBody();
    }

    private String getClientIdByTypeCode(int typeCode) {
        GitHubType gitHubType = GitHubType.getGitHubTypeByCode(typeCode);
        if (gitHubType == GitHubType.FRONT) {
            return frontClientId;
        }
        return iOSClientId;
    }

    private String getClientSecretByTypeCode(int typeCode) {
        GitHubType gitHubType = GitHubType.getGitHubTypeByCode(typeCode);
        if (gitHubType == GitHubType.FRONT) {
            return frontClientSecret;
        }
        return iOSClientSecret;
    }

    @Override
    public UserInfoDTO getUserInfo(String token) {
        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(GitHubUrl.USER_INFO.getUrl());
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.set(HttpHeaders.AUTHORIZATION, TOKEN + " " + token);
        HttpEntity<?> httpEntity = new HttpEntity<>(httpHeaders);
        return restTemplate.exchange(builder.toUriString(), HttpMethod.GET, httpEntity, UserInfoDTO.class).getBody();
    }

    @Override
    public EmailDTO getEmail(String token) {
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
