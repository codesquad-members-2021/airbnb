package com.enolj.airbnb.web.utils;

import com.enolj.airbnb.exception.ErrorMessage;
import com.enolj.airbnb.exception.GitHubTypeException;

public enum GitHubType {

    FRONT("github.front.client.id", "github.front.secret"),
    IOS("github.ios.client.id", "github.ios.secret");

    private final String clientId;
    private final String clientSecret;

    GitHubType(String clientId, String clientSecret) {
        this.clientId = clientId;
        this.clientSecret = clientSecret;
    }

    public String getClientId() {
        return clientId;
    }

    public String getClientSecret() {
        return clientSecret;
    }

    public static GitHubType getGitHubTypeByCode(int code) {
        switch (code) {
            case 1: return GitHubType.FRONT;
            case 2: return GitHubType.IOS;
            default: throw new GitHubTypeException(ErrorMessage.INVALID_GITHUBTYPE);
        }
    }
}
