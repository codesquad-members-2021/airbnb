package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.GoogleUser;
import com.codesquad.airbnb.OAuthToken;
import com.codesquad.airbnb.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

    private Logger logger = LoggerFactory.getLogger(UserController.class);

    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/oauth/google/callback") // user가 정보사용 승인하면 google이 String code를 queryString으로 보내 준다(?code="")
    public void oauthLogin(String code) {
        ResponseEntity<String> response = userService.createPost(code);
        // response안에 있는 정보를 OAuth 액세스 토큰으로 변환하기
        OAuthToken oAuthToken = userService.getAccessToken(response);
        logger.info("Access Token: {}", oAuthToken.getAccessToken());

    }
}
