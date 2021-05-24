package com.codesquad.airbnb.web.config.properties;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource(value = "classpath:secret.properties")
@ConfigurationProperties(prefix = "jwt")
@Getter
@Setter
@ToString
public class JwtSecret {
    private String issuer;
    private String secretKey;
    private long expireSecond;
}
