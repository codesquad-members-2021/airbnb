package com.codesquad.airbnb.web.service.oauth;

import com.codesquad.airbnb.web.constants.UserConstants;
import com.codesquad.airbnb.web.domain.User;
import com.codesquad.airbnb.web.dto.GithubProfile;
import org.springframework.stereotype.Service;

@Service
public class OauthProfileConverter {

    public User githubProfileToUser(GithubProfile githubProfile) {
        return User.builder()
                .id(UserConstants.ID_OF_NO_USER)
                .nickname(githubProfile.getLogin())
                .name(githubProfile.getName())
                .profileImage(githubProfile.getAvatarUrl())
                .accessToken(UserConstants.EMPTY_ACCESS_TOKEN)
                .build();
    }
}
