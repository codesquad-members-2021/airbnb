package com.codesquad.airbnb.web.service.oauth;

import com.codesquad.airbnb.web.config.properties.GithubApi;
import com.codesquad.airbnb.web.config.properties.OAuthSecret;
import org.springframework.stereotype.Service;

@Service
public class ApiUrlGenerator {
    private final GithubApi githubApi;
    private final OAuthSecret oAuthSecret;

    public ApiUrlGenerator(GithubApi githubApi, OAuthSecret oAuthSecret) {
        this.githubApi = githubApi;
        this.oAuthSecret = oAuthSecret;
    }

    public String githubLoginUrl() {
        return githubApi.getLoginUrl() +
                "?" +
                oAuthSecret.getClientIdKey() +
                "=" +
                oAuthSecret.getClientIdValue() +
                "&" +
                githubApi.getScopeKey() +
                "=" +
                githubApi.getScopeValue();
    }
}
