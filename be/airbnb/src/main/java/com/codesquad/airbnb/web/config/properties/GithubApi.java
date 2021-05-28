package com.codesquad.airbnb.web.config.properties;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Getter
@Setter
@ToString
@Configuration
@ConfigurationProperties(prefix = "api")
@PropertySource(value = "classpath:api.properties")
public class GithubApi {
    private String loginUrl;
    private String accessTokenUrl;
    private String profileUrl;
    private String scopeKey;
    private String scopeValue;
}
