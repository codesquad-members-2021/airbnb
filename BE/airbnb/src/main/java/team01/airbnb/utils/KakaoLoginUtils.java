package team01.airbnb.utils;

import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

@PropertySource("classpath:application-oauth.properties")
@RequiredArgsConstructor
@Configuration
public class KakaoLoginUtils {

    private final Environment environment;

    public String getGrantType() {
        return environment.getProperty("kakao-grant-type");
    }

    public String getClientId() {
        return environment.getProperty("kakao-client-id");
    }

    public String getRedirectUri() {
        return environment.getProperty("kakao-redirect-uri");
    }

    public String getCodeUri() {
        return environment.getProperty("kakao-code-uri");
    }

    public String getTokenUri() {
        return environment.getProperty("kakao-token-uri");
    }

    public String getProfileUri() {
        return environment.getProperty("kakao-profile-uri");
    }
}
