package com.codesquad.airbnb.web.controller;

import com.codesquad.airbnb.web.domain.User;
import com.codesquad.airbnb.web.dto.GithubProfile;
import com.codesquad.airbnb.web.service.GithubApiRequester;
import com.codesquad.airbnb.web.service.ApiUrlGenerator;
import com.codesquad.airbnb.web.service.OauthProfileConverter;
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
    private final GithubApiRequester githubApiRequester;
    private final OauthProfileConverter oauthProfileConverter;

    public GithubUsersController(ApiUrlGenerator apiUrlGenerator, GithubApiRequester githubApiRequester, OauthProfileConverter oauthProfileConverter) {
        this.apiUrlGenerator = apiUrlGenerator;
        this.githubApiRequester = githubApiRequester;
        this.oauthProfileConverter = oauthProfileConverter;
    }

    @GetMapping("/login")
    public void login(HttpServletResponse response) throws IOException {
        response.sendRedirect(apiUrlGenerator.githubLoginUrl());
    }

    @GetMapping("/callback")
    public void githubCallback(@RequestParam(value = "code") String code) {
        String githubAccessToken = githubApiRequester.githubAccessToken(code);
        GithubProfile githubProfile = githubApiRequester.githubProfile(githubAccessToken);
        User user = oauthProfileConverter.githubProfileToUser(githubProfile);
        log.info("user : {}", user);
    }
}
