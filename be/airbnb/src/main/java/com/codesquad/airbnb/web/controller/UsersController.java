package com.codesquad.airbnb.web.controller;

import com.codesquad.airbnb.web.dto.GithubProfile;
import com.codesquad.airbnb.web.service.ApiRequester;
import com.codesquad.airbnb.web.service.ApiUrlGenerator;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Slf4j
@RequestMapping("/users")
@RestController
public class UsersController {

    private final ApiUrlGenerator apiUrlGenerator;
    private final ApiRequester apiRequester;

    public UsersController(ApiUrlGenerator apiUrlGenerator, ApiRequester apiRequester) {
        this.apiUrlGenerator = apiUrlGenerator;
        this.apiRequester = apiRequester;
    }

    @GetMapping("/login")
    public void login(HttpServletResponse response) throws IOException {
        response.sendRedirect(apiUrlGenerator.githubLoginUrl());
    }

    @GetMapping("/callback")
    public void callback(@RequestParam(value = "code") String code) {
        String githubAccessToken = apiRequester.githubAccessToken(code);
        GithubProfile githubProfile = apiRequester.githubProfile(githubAccessToken);
        log.info("githubProfile : {}", githubProfile);
    }
}
