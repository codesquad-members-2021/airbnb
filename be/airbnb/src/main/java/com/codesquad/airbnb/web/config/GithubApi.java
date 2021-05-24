package com.codesquad.airbnb.web.config;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource(value = "classpath:api.properties")
@ConfigurationProperties(prefix = "api")
@Getter
@Setter
@ToString
public class GithubApi {
    private String loginUrl;
    private String accessTokenUrl;
    private String scopeKey;
    private String scopeValue;
}
