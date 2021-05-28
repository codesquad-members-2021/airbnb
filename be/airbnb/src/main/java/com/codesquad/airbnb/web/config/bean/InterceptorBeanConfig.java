package com.codesquad.airbnb.web.config.bean;

import com.codesquad.airbnb.web.config.interceptor.AuthInterceptor;
import com.codesquad.airbnb.web.service.oauth.TokenService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class InterceptorBeanConfig {

    private final TokenService tokenService;

    public InterceptorBeanConfig(TokenService tokenService) {
        this.tokenService = tokenService;
    }

    @Bean
    public AuthInterceptor authInterceptor() {
        return new AuthInterceptor(tokenService);
    }
}
