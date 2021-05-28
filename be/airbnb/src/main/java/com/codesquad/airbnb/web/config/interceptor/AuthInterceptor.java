package com.codesquad.airbnb.web.config.interceptor;

import com.codesquad.airbnb.web.exceptions.jwt.InvalidJwtTokenException;
import com.codesquad.airbnb.web.exceptions.jwt.NoJwtTokenException;
import com.codesquad.airbnb.web.service.oauth.TokenService;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static com.codesquad.airbnb.web.constants.TokenConstants.CLAIM_KEY_USER_ID;

public class AuthInterceptor implements HandlerInterceptor {

    private static final int BEARER_TOKEN_LENGTH = 2;
    private static final int TOKEN = 1;

    private final TokenService tokenService;

    public AuthInterceptor(TokenService tokenService) {
        this.tokenService = tokenService;
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (handler instanceof HandlerMethod) {
            onAuthAnnotation(request);
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
    }

    private void onAuthAnnotation(HttpServletRequest request) {
        String token = extractTokenFromHeader(request);
        int userId = tokenService.extractUserIdFromToken(token);
        request.setAttribute(CLAIM_KEY_USER_ID, userId);
    }

    private String extractTokenFromHeader(HttpServletRequest request) {
        String authorizationValue = request.getHeader("Authorization");
        if (authorizationValue == null || authorizationValue.isEmpty()) {
            throw new NoJwtTokenException(NoJwtTokenException.NO_TOKEN_IN_REQUEST_HEADER);
        }
        String[] splitedString = authorizationValue.split(" ");
        if (splitedString.length != BEARER_TOKEN_LENGTH) {
            throw new InvalidJwtTokenException(InvalidJwtTokenException.BAD_TOKEN);
        }
        return splitedString[TOKEN];
    }
}
