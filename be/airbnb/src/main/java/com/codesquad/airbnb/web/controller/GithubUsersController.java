package com.codesquad.airbnb.web.controller;

import com.codesquad.airbnb.web.domain.user.User;
import com.codesquad.airbnb.web.dto.UserWithToken;
import com.codesquad.airbnb.web.service.oauth.ApiUrlGenerator;
import com.codesquad.airbnb.web.service.oauth.OauthApiRequester;
import com.codesquad.airbnb.web.service.oauth.github.GithubApiRequester;
import com.codesquad.airbnb.web.service.users.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Slf4j
@RequestMapping("/users/github")
@RestController
public class GithubUsersController {

    private final ApiUrlGenerator apiUrlGenerator;
    private final OauthApiRequester githubApiRequester;
    private final UserService userService;

    public GithubUsersController(ApiUrlGenerator apiUrlGenerator, GithubApiRequester githubApiRequester, UserService userService) {
        this.apiUrlGenerator = apiUrlGenerator;
        this.githubApiRequester = githubApiRequester;
        this.userService = userService;
    }

    @GetMapping("/login")
    public void login(HttpServletResponse response) throws IOException {
        response.sendRedirect(apiUrlGenerator.githubLoginUrl());
    }

    @GetMapping("/callback")
    public UserWithToken githubCallback(@RequestParam(value = "code") String code) {
        String githubAccessToken = githubApiRequester.accessToken(code);
        User user = githubApiRequester.profile(githubAccessToken);
        return userService.processLogin(user);
    }
}
