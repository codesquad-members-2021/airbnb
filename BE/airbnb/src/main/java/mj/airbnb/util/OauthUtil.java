package mj.airbnb.util;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import java.util.Objects;
@Component
@PropertySource("classpath:/oauth.properties")
public class OauthUtil {

    private final Environment environment;

    public OauthUtil(Environment environment) {
        this.environment = environment;
    }

    public String getClientId(){
        return environment.getProperty("github.client.id");
    }

    public String getSecretId(){
        return environment.getProperty("github.secret");
    }

    public String getJwtSecret(){
        return environment.getProperty("jwt.algorithm.secret");
    }

    public String getJwtIssuer(){
        return environment.getProperty("jwt.issuer");
    }

    public int getJwtExpireSecs(){
        return Integer.parseInt(Objects.requireNonNull(environment.getProperty("jwt.expire.sec")));
    }

    public String getClientIdForIos(){
        return environment.getProperty("github.client.id.ios");
    }

    public String getSecretIdForIos(){
        return environment.getProperty("github.secret.ios");
    }
}
