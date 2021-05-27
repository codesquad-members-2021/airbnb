package com.codesquad.airbnb.web.config;

import com.codesquad.airbnb.web.service.interceptor.AuthInterceptor;
import com.codesquad.airbnb.web.service.oauth.TokenService;
import com.codesquad.airbnb.web.service.resolver.CertifiedUserResolver;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class BeanRegistConfig {

    private final TokenService tokenService;

    public BeanRegistConfig(TokenService tokenService) {
        this.tokenService = tokenService;
    }

    @Bean
    public AuthInterceptor authInterceptor() {
        return new AuthInterceptor(tokenService);
    }

    @Bean
    public CertifiedUserResolver certifiedUserResolver() {
        return new CertifiedUserResolver();
    }
}
