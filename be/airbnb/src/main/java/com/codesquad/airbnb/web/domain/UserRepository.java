package com.codesquad.airbnb.web.domain;

import java.util.Optional;

public interface UserRepository {
    User save(User user);

    Optional<User> findUserByAuthenticatedByAndOauthId(OAuthAuthenticater oAuthAuthenticater, String oauthId);

    void updateAccessToken(int id, String newToken);
}
