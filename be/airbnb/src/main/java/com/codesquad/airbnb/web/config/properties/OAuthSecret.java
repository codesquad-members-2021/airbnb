package com.codesquad.airbnb.web.config.properties;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource(value = "classpath:secret.properties")
@ConfigurationProperties(prefix = "secret")
@Getter
@Setter
@ToString
public class OAuthSecret {
    private String clientIdKey;
    private String clientIdValue;
    private String clientSecretKey;
    private String clientSecretValue;
}
