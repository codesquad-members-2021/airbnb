package com.airbnb.controller;

import com.airbnb.annotation.LoginRequired;
import com.airbnb.dto.*;
import com.airbnb.service.GitHubService;
import com.airbnb.service.UserService;
import com.airbnb.util.JwtUtil;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

import static org.springframework.http.HttpStatus.CREATED;

@RestController
@RequestMapping("/api")
public class AuthController {
    private final GitHubService gitHubService;
    private final UserService userService;

    public AuthController(GitHubService gitHubService, UserService userService) {
        this.gitHubService = gitHubService;
        this.userService = userService;
    }

    @GetMapping("/hello")
    @LoginRequired
    public MessageResponse getHello(HttpServletRequest request) {
        UserDto userDto = (UserDto) request.getAttribute("user");
        userService.authenticate(userDto);
        return new MessageResponse("안녕하세요! 로그인 한 유저는 언제나 환영합니다!");
    }

    @PostMapping("/auth")
    public ResponseEntity<AuthResponse> auth(@RequestBody AuthRequest authRequest) {
        String code = authRequest.getCode();

        AccessTokenResponse accessTokenResponse = gitHubService.getAccessToken(code);
        String accessToken = accessTokenResponse.getAccessToken();

        UserDto user = gitHubService.getUser(accessToken);
        String jwt = JwtUtil.createJwt(user);

        userService.saveLoggedInUser(user, accessTokenResponse);

        return ResponseEntity.status(CREATED).body(new AuthResponse(jwt));
    }
}
