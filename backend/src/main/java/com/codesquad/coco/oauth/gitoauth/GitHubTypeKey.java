package com.codesquad.coco.oauth.gitoauth;

public enum GitHubTypeKey {

    IOS("github.ios.client.id","github.ios.secret"),
    DESKTOP("github.desktop.client.id","github.desktop.secret");

    private String clientKey;
    private String clientSecretKey;

    GitHubTypeKey(String clientKey, String clientSecretKey) {
        this.clientKey = clientKey;
        this.clientSecretKey = clientSecretKey;
    }

    public String getClientKey() {
        return clientKey;
    }

    public String getClientSecretKey() {
        return clientSecretKey;
    }
}
