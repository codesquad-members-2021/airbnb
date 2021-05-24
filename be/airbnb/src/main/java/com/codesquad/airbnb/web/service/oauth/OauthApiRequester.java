package com.codesquad.airbnb.web.service.oauth;

import com.codesquad.airbnb.web.domain.User;

public interface OauthApiRequester {
    public String accessToken(String code);
    public User profile(String accessToken);
}
