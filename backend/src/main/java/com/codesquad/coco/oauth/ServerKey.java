package com.codesquad.coco.oauth;

import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

@PropertySource("classpath:/secretKey.properties")
@Component
public class ServerKey {

    private static final String JWT_PATH = "jwt.server.key";
    private String jwtServerKey;
    private Environment environment;

    public ServerKey(Environment environment) {
        this.environment = environment;
        this.jwtServerKey = this.environment.getProperty(JWT_PATH);
    }

    public String getJwtServerKey() {
        return jwtServerKey;
    }
}
