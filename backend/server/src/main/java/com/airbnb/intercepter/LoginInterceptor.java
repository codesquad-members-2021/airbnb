package com.airbnb.intercepter;

import com.airbnb.annotation.LoginRequired;
import com.airbnb.dto.UserDto;
import com.airbnb.exception.AuthenticationException;
import com.airbnb.util.JwtUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Configuration
public class LoginInterceptor implements HandlerInterceptor {
    private final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        String authorization = request.getHeader("Authorization");
        if (((HandlerMethod) handler).hasMethodAnnotation(LoginRequired.class)) {
            authenticate(authorization, request);
        }
        return true;
    }

    private void authenticate(String authorization, HttpServletRequest request) {
        String[] splitAuth = authorization.split(" ");
        String tokenType = splitAuth[0].toLowerCase();
        if (splitAuth.length < 1 || !tokenType.equals("bearer")) {
            throw new AuthenticationException("잘못된 Authorization Header 입니다.");
        }
        String token = splitAuth[1];
        handleJwt(token, request);
    }

    private void handleJwt(String token, HttpServletRequest request) {
        UserDto userDto = JwtUtil.decodeJwt(token);
        logger.info("login:{}, name: {}", userDto.getLogin(), userDto.getName());
        request.setAttribute("user", userDto);
    }
}
