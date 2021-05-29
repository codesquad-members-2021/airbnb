package com.codesquad.coco.oauth.gitoauth;

public enum GitURI {

    IOS_REDIRECT_URI("http://localhost:8080/git/auth/app"),
    DESKTOP_REDIRECT_URI("http://localhost:8080/git/auth"),
    ACCESS_TOKEN_URI("https://github.com/login/oauth/access_token"),
    USER_INFO_URI("https://api.github.com/user");

    private String uri;

    GitURI(String uri) {
        this.uri = uri;
    }

    public String getUri() {
        return uri;
    }
}
