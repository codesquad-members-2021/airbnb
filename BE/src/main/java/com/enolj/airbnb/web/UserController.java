package com.enolj.airbnb.web;

import com.enolj.airbnb.service.UserService;
import com.enolj.airbnb.web.dto.UserResponseDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

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
        return userService.login(code, typeCode);
    }

    @GetMapping("/logout")
    public void logout(@RequestHeader String authorization) {
        logger.info("로그아웃 요청");
        userService.logout(authorization);
    }
}
