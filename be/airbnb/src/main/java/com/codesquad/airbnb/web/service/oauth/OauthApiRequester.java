package com.codesquad.airbnb.web.service.oauth;

import com.codesquad.airbnb.web.domain.user.User;

public interface OauthApiRequester {
    String accessToken(String code);

    User profile(String accessToken);
}
