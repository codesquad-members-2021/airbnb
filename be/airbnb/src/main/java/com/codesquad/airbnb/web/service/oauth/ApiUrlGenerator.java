package com.codesquad.airbnb.web.service.oauth;

import com.codesquad.airbnb.web.config.properties.GithubApi;
import com.codesquad.airbnb.web.config.properties.OAuthSecret;
import org.springframework.stereotype.Service;

@Service
public class ApiUrlGenerator {
    private final GithubApi githubApi;
    private final OAuthSecret OAuthSecret;

    public ApiUrlGenerator(GithubApi githubApi, OAuthSecret OAuthSecret) {
        this.githubApi = githubApi;
        this.OAuthSecret = OAuthSecret;
    }

    public String githubLoginUrl() {
        return githubApi.getLoginUrl() +
                "?" +
                OAuthSecret.getClientIdKey() +
                "=" +
                OAuthSecret.getClientIdValue() +
                "&" +
                githubApi.getScopeKey() +
                "=" +
                githubApi.getScopeValue();
    }
}
