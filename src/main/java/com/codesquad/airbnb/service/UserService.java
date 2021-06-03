package com.codesquad.airbnb.service;

import com.codesquad.airbnb.GoogleUser;
import com.codesquad.airbnb.OAuthToken;
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
        // response안에 있는 정보를 OAuth 액세스 토큰으로 변환하기
        OAuthToken oAuthToken = oauthService.getAccessToken(accessTokenResponse);
        logger.info("Access Token: {}", oAuthToken.getAccessToken());

        ResponseEntity<String> userInfoResponse = oauthService.createGetRequest(oAuthToken);
        GoogleUser googleUser = oauthService.getUserInfo(userInfoResponse);
        logger.info("Google User Name: {}", googleUser.getName());

        if (!isJoinedUser(googleUser)) {
            signUp(googleUser, oAuthToken);
        }
        // (회원이 이미 있다면) 로그인
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
