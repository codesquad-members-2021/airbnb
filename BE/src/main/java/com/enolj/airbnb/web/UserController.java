package com.enolj.airbnb.web;

import com.enolj.airbnb.service.UserService;
import com.enolj.airbnb.web.dto.UserResponseDTO;
import com.enolj.airbnb.web.utils.JwtUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import static com.enolj.airbnb.web.utils.GitHubType.getGitHubTypeByCode;

@RestController
public class UserController {

    public final UserService userService;
    private final Logger logger = LoggerFactory.getLogger(UserController.class);

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/login")
    public UserResponseDTO login(@RequestParam String code, @RequestParam int typeCode) {
        logger.info("로그인 요청");
        return userService.login(code, getGitHubTypeByCode(typeCode));
    }

    @GetMapping("/logout")
    public void logout(@RequestHeader String authorization) {
        logger.info("로그아웃 요청");
        userService.logout(JwtUtil.getUserIdFromToken(JwtUtil.getTokenFromAuthorization(authorization)));
    }
}
