package com.airbnb.controller;

import com.airbnb.annotation.LoginRequired;
import com.airbnb.dto.*;
import com.airbnb.service.OauthService;
import com.airbnb.util.JwtUtil;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import static org.springframework.http.HttpStatus.CREATED;

@RestController
@RequestMapping("/api")
public class OauthController {
    private final OauthService oauthService;

    public OauthController(OauthService oauthService) {
        this.oauthService = oauthService;
    }

    @GetMapping("/hello")
    @LoginRequired
    public MessageResponse getHello(HttpServletRequest request) {
        UserDto userDto = (UserDto) request.getAttribute("user");
        oauthService.authenticate(userDto);
        return new MessageResponse("안녕하세요! 로그인 한 유저는 언제나 환영합니다!");
    }

    @PostMapping("/auth")
    public ResponseEntity<AuthResponse> auth(@RequestBody AuthRequest authRequest) {
        String code = authRequest.getCode();

        AccessTokenResponse accessTokenResponse = oauthService.getAccessToken(code);
        String accessToken = accessTokenResponse.getAccessToken();

        UserDto user = oauthService.getUserFromGitHub(accessToken);
        String jwt = JwtUtil.createJwt(user);

        oauthService.saveLoggedInUser(user, accessTokenResponse);

        return ResponseEntity.status(CREATED).body(new AuthResponse(jwt));
    }
}
