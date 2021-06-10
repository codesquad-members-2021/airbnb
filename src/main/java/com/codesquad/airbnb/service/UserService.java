package com.codesquad.airbnb.service;

import com.codesquad.airbnb.oauth.GoogleUser;
import com.codesquad.airbnb.oauth.OAuthToken;
import com.codesquad.airbnb.domain.User;
import com.codesquad.airbnb.repository.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    private Logger logger = LoggerFactory.getLogger(UserService.class);

    private final UserRepository userRepository;
    private final OAuthService oauthService;

    public UserService(UserRepository userRepository, OAuthService oauthService) {
        this.userRepository = userRepository;
        this.oauthService = oauthService;
    }

    public void oauthLogin(String code) {
        ResponseEntity<String> accessTokenResponse = oauthService.createPostRequest(code);
        OAuthToken oAuthToken = oauthService.getAccessToken(accessTokenResponse);
        logger.info("Access Token: {}", oAuthToken.getAccessToken());

        ResponseEntity<String> userInfoResponse = oauthService.createGetRequest(oAuthToken);
        GoogleUser googleUser = oauthService.getUserInfo(userInfoResponse);
        logger.info("Google User Name: {}", googleUser.getName());

        if (!isJoinedUser(googleUser)) {
            signUp(googleUser, oAuthToken);
        }
    }

    private boolean isJoinedUser(GoogleUser googleUser) {
        List<User> users = userRepository.findByEmail(googleUser.getEmail());
        logger.info("Joined User: {}", users.stream().findAny());
        return !users.isEmpty();
    }

    private void signUp(GoogleUser googleUser, OAuthToken oAuthToken) {
        User user = googleUser.toUser(oAuthToken.getAccessToken());
        userRepository.insert(user);
    }
}
