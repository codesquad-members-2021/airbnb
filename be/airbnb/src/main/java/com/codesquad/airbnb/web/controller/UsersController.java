package com.codesquad.airbnb.web.controller;

import com.codesquad.airbnb.web.service.ApiRequester;
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

    private final ApiRequester apiRequester;

    public UsersController(ApiRequester apiRequester) {
        this.apiRequester = apiRequester;
    }

    @GetMapping("/login")
    public void login(HttpServletResponse response) throws IOException {
        response.sendRedirect("https://github.com/login/oauth/authorize?client_id=Iv1.da513e37628ae941&scope=user");
    }

    @GetMapping("/callback")
    public void callback(@RequestParam(value = "code") String code) {
        apiRequester.githubAccessToken(code);
    }
}
