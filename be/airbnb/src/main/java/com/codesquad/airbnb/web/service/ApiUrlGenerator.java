package com.codesquad.airbnb.web.service;

import com.codesquad.airbnb.web.config.properties.GithubApi;
import com.codesquad.airbnb.web.config.properties.ServerSecret;
import org.springframework.stereotype.Service;

@Service
public class ApiUrlGenerator {
    private final GithubApi githubApi;
    private final ServerSecret serverSecret;

    public ApiUrlGenerator(GithubApi githubApi, ServerSecret serverSecret) {
        this.githubApi = githubApi;
        this.serverSecret = serverSecret;
    }

    public String githubLoginUrl() {
        return githubApi.getLoginUrl() +
                "?" +
                serverSecret.getClientIdKey() +
                "=" +
                serverSecret.getClientIdValue() +
                "&" +
                githubApi.getScopeKey() +
                "=" +
                githubApi.getScopeValue();
    }
}
