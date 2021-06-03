package com.codesquad.airbnb.controller;

import com.codesquad.airbnb.service.UserService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class UserController {

    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/oauth/google/callback")
    public ResponseEntity oauthLogin(String code) {
        userService.oauthLogin(code);
        return new ResponseEntity("로그인 성공", HttpStatus.OK);
    }
}
