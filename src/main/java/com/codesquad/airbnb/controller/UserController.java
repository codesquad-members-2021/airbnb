package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.GoogleUser;
import com.codesquad.airbnb.OAuthToken;
import com.codesquad.airbnb.domain.User;
import com.codesquad.airbnb.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class UserController {

    private Logger logger = LoggerFactory.getLogger(UserController.class);

    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/oauth/google/callback") // user가 정보사용 승인하면 google이 String code를 queryString으로 보내 준다(?code="")
    public ResponseEntity oauthLogin(String code) {
        ResponseEntity<String> accessTokenResponse = userService.createPost(code);
        // response안에 있는 정보를 OAuth 액세스 토큰으로 변환하기
        OAuthToken oAuthToken = userService.getAccessToken(accessTokenResponse);
        logger.info("Access Token: {}", oAuthToken.getAccessToken());

        ResponseEntity<String> userInfoResponse = userService.createGet(oAuthToken);
        GoogleUser googleUser = userService.getUserInfo(userInfoResponse);
        logger.info("Google User Name: {}", googleUser.getName());
        
        if (!userService.isJoinedUser(googleUser)) {
            User user = googleUser.toUser(oAuthToken.getAccessToken());
            userService.save(user); // 회원가입
        }
        // 로그인

        return new ResponseEntity("로그인 성공", HttpStatus.OK);
    }
}
