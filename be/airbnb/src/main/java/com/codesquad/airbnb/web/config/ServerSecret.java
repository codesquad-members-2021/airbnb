package com.codesquad.airbnb.web.config;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource(value = "classpath:secret.properties")
@ConfigurationProperties(prefix = "secret.client")
@Getter
@Setter
public class ServerSecret {
    private String id;
    private String secret;
}
