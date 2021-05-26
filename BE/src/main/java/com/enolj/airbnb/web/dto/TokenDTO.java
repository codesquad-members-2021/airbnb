package com.enolj.airbnb.web.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public class TokenDTO {

    @JsonProperty("access_token")
    private String accessToken;
    private String token_type;
    private String scope;

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public void setToken_type(String token_type) {
        this.token_type = token_type;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    public String getAccessToken() {
        return accessToken;
    }

    @Override
    public String toString() {
        return "TokenDTO{" +
                "access_token='" + accessToken + '\'' +
                ", token_type='" + token_type + '\'' +
                ", scope='" + scope + '\'' +
                '}';
    }
}
