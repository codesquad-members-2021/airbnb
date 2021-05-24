package com.codesquad.airbnb.web.service.oauth;

import com.codesquad.airbnb.web.domain.User;

public interface OauthApiRequester {
    String accessToken(String code);
    User profile(String accessToken);
}
