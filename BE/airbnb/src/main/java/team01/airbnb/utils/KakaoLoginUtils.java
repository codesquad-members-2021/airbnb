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

    public String getProperty(String key) {
        return environment.getProperty(key);
    }
}
