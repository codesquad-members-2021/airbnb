package com.codesquad.coco.oauth.gitoauth;

public enum GitHubDeviceType {

    IOS("github.ios.client.id", "github.ios.secret", "http://localhost:8080/git/auth/app"),
    DESKTOP("github.desktop.client.id", "github.desktop.secret", "http://localhost:8080/git/auth");

    private String clientKey;
    private String clientSecret;
    private String redirectUri;

    GitHubDeviceType(String clientKey, String clientSecret, String redirectUri) {
        this.clientKey = clientKey;
        this.clientSecret = clientSecret;
        this.redirectUri = redirectUri;
    }

    public boolean isSame(GitHubDeviceType gitHubDeviceType) {
        return this == gitHubDeviceType;
    }

    public String getClientKey() {
        return clientKey;
    }

    public String getClientSecret() {
        return clientSecret;
    }

    public String getRedirectUri() {
        return redirectUri;
    }

}
