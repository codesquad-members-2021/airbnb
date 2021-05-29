package com.codesquad.coco.oauth;

import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import static com.codesquad.coco.oauth.gitoauth.GitHubTypeKey.DESKTOP;
import static com.codesquad.coco.oauth.gitoauth.GitHubTypeKey.IOS;

@Component
public class ServerKey {

    private static final String JWT_PATH = "jwt.server.key";
    private String deskTopClientId;
    private String deskTopClientSecret;
    private String iOSClientId;
    private String iOSClientSecret;
    private String jwtServerKey;
    private Environment environment;

    public ServerKey(Environment environment) {
        this.environment = environment;
        this.deskTopClientId = this.environment.getProperty(DESKTOP.getClientKey());
        this.deskTopClientSecret = this.environment.getProperty(DESKTOP.getClientSecretKey());
        this.iOSClientId = this.environment.getProperty(IOS.getClientKey());
        this.iOSClientSecret = this.environment.getProperty(IOS.getClientSecretKey());
        this.jwtServerKey = this.environment.getProperty(JWT_PATH);
    }

    public String getDeskTopClientId() {
        return deskTopClientId;
    }

    public String getDeskTopClientSecret() {
        return deskTopClientSecret;
    }

    public String getiOSClientId() {
        return iOSClientId;
    }

    public String getiOSClientSecret() {
        return iOSClientSecret;
    }

    public String getJwtServerKey() {
        return jwtServerKey;
    }
}
