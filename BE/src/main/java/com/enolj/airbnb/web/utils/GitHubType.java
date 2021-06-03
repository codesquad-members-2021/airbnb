package com.enolj.airbnb.web.utils;

import com.enolj.airbnb.exception.ErrorMessage;
import com.enolj.airbnb.exception.GitHubTypeException;

public enum GitHubType {

    FRONT(1, "github.front.client.id", "github.front.secret"),
    IOS(2, "github.ios.client.id", "github.ios.secret");

    private final int code;
    private final String clientId;
    private final String clientSecret;

    GitHubType(int code, String clientId, String clientSecret) {
        this.code = code;
        this.clientId = clientId;
        this.clientSecret = clientSecret;
    }

    public int getCode() {
        return code;
    }

    public String getClientId() {
        return clientId;
    }

    public String getClientSecret() {
        return clientSecret;
    }

    public boolean matchCode(int code) {
        return this.code == code;
    }

    public static GitHubType getGitHubTypeByCode(int code) {
        if (GitHubType.FRONT.matchCode(code)) {
            return GitHubType.FRONT;
        }
        if (GitHubType.IOS.matchCode(code)) {
            return GitHubType.IOS;
        }
        throw new GitHubTypeException(ErrorMessage.INVALID_GITHUBTYPE);
    }
}
