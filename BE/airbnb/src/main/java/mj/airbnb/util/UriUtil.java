package mj.airbnb.util;

import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;
import org.springframework.web.util.UriComponentsBuilder;
@Component
@PropertySource("classpath:/oauth.properties")
public class UriUtil {

    private Environment environment;

    private static final String USERINFO_URI = "github.access.user.url";
    private static final String LOGIN_URI = "github.authorize.url";
    private static final String REDIRECT_URI = "github.callback.url";
    private static final String TOKEN_URI = "github.access.token.url";
    public static final String CLIENT_ID = "github.client.id";
    public static final String CLIENT_SECRET = "github.secret";
    public static final String SCOPE = "github.scope";
    private String clientId;
    private String redirectUri;

    public UriUtil(Environment environment) {
        this.environment = environment;
    }

    public String getTempCodeUri() {
        clientId = environment.getProperty(CLIENT_ID);
        redirectUri = environment.getProperty(REDIRECT_URI);

        String loginUri = environment.getProperty(LOGIN_URI);
        String scope = environment.getProperty(SCOPE);

        return loginUri
                + "?client_id=" + clientId
                + "&redirect_uri=" + redirectUri
                + "&scope=" + scope;
    }

    public String getAccessTokenUriWithCode(String tempCode) {
        String accessTokenUri = environment.getProperty(TOKEN_URI);
        String clientSecret = environment.getProperty(CLIENT_SECRET);

        return accessTokenUri
                + "?client_id=" + clientId
                + "&client_secret=" + clientSecret
                + "&code=" + tempCode;
    }

    public String getTokenUri() {
        return environment.getProperty(TOKEN_URI);
    }

    public String getUserInfoUri() {
        return environment.getProperty(USERINFO_URI);
    }
}
