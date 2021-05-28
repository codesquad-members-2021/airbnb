package com.codesquad.airbnb.web.config.bean;

import com.codesquad.airbnb.web.service.resolver.CertifiedUserResolver;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ResolverBeanConfig {

    @Bean
    public CertifiedUserResolver certifiedUserResolver() {
        return new CertifiedUserResolver();
    }
}
